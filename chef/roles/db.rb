name "db"
description "A database role"

run_list(
  "role[base]",
  "recipe[mysql::server]",
  "recipe[postgresql::server]"
)

override_attributes(
  "mysql" => {
    "server_root_password"   => "iloverandompasswordsbutthiswilldo",
    "server_repl_password"   => "iloverandompasswordsbutthiswilldo",
    "server_debian_password" => "iloverandompasswordsbutthiswilldo"
  },
  "postgresql" => {
    "version" => "9.2",
    "listen_address" => "127.0.0.1",
    "ssl" => false
  }
)
