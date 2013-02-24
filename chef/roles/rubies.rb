name "rubies"
description "Setup multiple Ruby installations using rbenv"

run_list(
  "recipe[rbenv::system]",
  "recipe[rbenv_vars]",
  "recipe[ruby_build]"
)

default_attributes(
  "rbenv" => {
    "rubies" => [
      {
        "name" => "1.8.7-p371",
        "environment" => {
          "RUBY_CONFIGURE_OPTS" => "--disable-install-doc"
        }
      },
      {
        "name" => "1.9.3-p392",
        "environment" => {
          "RUBY_CONFIGURE_OPTS" => "--disable-install-doc"
        }
      }
    ],
    "gems" => {
      "1.8.7-p371" => [
        { "name" => "bundler" }
      ],
      "1.9.3-p392" => [
        { "name" => "bundler" }
      ]
    }
  }
)
