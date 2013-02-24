name "vagrant"
description "The base vagrant role with a few overrides"

override_attributes(
  "authorization" => {
    "sudo" => {
      "users" => ["vagrant"],
      "passwordless" => true
    }
  }
)
