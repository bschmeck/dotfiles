function run_rails() { script -q /dev/null rails s -b 127.0.0.1 "$@" | sed -l -e "/ActionController::RoutingError (No route matches \[GET\] \"\/system\//, /<main>/ D" -e "/Started GET \"\/system\// d" -e "/Started GET \"\/assets\// d" -e "/Rendered.*routing_error\.erb/ d" | sed -l "s/^
$//g" | sed -l "/^$/N;/^\n$/D" | egrep --line-buffered --color "^(dbg:|\[ERROR\]).*|$" ; }
