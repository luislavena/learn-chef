name "base"
description "The base role with required system-level recipes for all nodes"

run_list(
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[git]",
  "recipe[curl]",
  "role[security]",
  "role[monitoring]"
)
