def sum(array)
  return_value = 0
  for i in array
    return_value = return_value + i
  end
  return return_value
end

puts sum([1,2,3,4,5])
