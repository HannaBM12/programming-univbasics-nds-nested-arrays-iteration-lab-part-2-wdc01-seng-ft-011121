def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  new_array = []
  outer_index = 0
  while outer_index < src.length do
    inner_index = 0
    min_value = src[outer_index][inner_index]
    while inner_index < src[outer_index].length do
      if src[outer_index][inner_index] < min_value
        min_value = src[outer_index][inner_index]
      end
      inner_index += 1
    end
    new_array << min_value
    outer_index += 1
  end
  new_array
end
