function has_key(table, key)
  local value = table[key] ~= nil
  return value != nil
end