name "security"
description "The role with security-related recipes for nodes"

run_list(
  "recipe[openssh]",
  "recipe[sudo]"
)
