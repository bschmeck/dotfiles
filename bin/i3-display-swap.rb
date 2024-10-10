#!/home/bschmeck/.asdf/shims/ruby

require "json"

Workspace = Data.define(:name, :output, :focused)

module Swapper
  def self.call
    JSON
      .parse(`i3-msg -t get_workspaces`)
      .select {|h| h["visible"] }
      .map { |h| Workspace.new(h["name"], h["output"], h["focused"]) }
      .then { |workspaces| swap(*workspaces) }
      .each { |workspace| `i3-msg '[workspace="#{workspace.name}"]' move workspace to output #{workspace.output}` }
      .each { |workspace| `i3-msg workspace "#{workspace.name}"` }
  end

  def self.swap(a, b)
    if a.focused
      [Workspace.new(b.name, a.output, b.focused), Workspace.new(a.name, b.output, a.focused)]
    else
      [Workspace.new(a.name, b.output, a.focused), Workspace.new(b.name, a.output, b.focused)]
    end

  end
end

Swapper.call
