function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst --filelimit 25 -L ${1:-2} -aC $2
}

function take() {
  mkdir -p $@ && cd ${@:$#}
}
