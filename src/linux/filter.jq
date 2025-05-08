.items | map([.id, .created_at, .name, .has_test, .alternate_url]) as $rows |
  [["id","created_at","name","has_test","alternate_url"]] + $rows |
  map(@csv)[] 