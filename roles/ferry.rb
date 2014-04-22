name 'ferry'
description 'ferry'
run_list(
  'recipe[apt]',
  'recipe[timezone]',
  'recipe[build-essential]',
  'recipe[curl]',
  'recipe[git]',
  'recipe[vim]',
  'recipe[python]',
  'recipe[docker]',
  'recipe[ferry]'
)
