# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.empty?
  values = []
  values = name_hash.collect { |key, value| value}
  min_value = values[0]
  i = 0
  while i < values.length
    min_value = values[i] if values[i] < min_value
    i += 1
  end

  name_hash.key(min_value)
end
