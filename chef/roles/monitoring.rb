name "monitoring"
description "The role with system monitoring recipes for all nodes"
run_list(
  "recipe[htop]",
  "recipe[iftop]"
)

default_attributes(
)
