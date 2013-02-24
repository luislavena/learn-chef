name "db"
description "A database role"

run_list(
  "role[base]",
  "recipe[mysql::server]"
)

default_attributes(
  "mysql" => {
    "server_root_password" => "iloverandompasswordsbutthiswilldo",
    "server_repl_password" => "iloverandompasswordsbutthiswilldo",
    "server_debian_password" => "iloverandompasswordsbutthiswilldo"
  }
)
