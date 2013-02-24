name "app"
description "Base application role"

run_list(
  "role[rubies]"
)
