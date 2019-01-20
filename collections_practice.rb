def begins_with_r (array)
  array.each do |word|
    if word[0,1] == "r"
    else
      return false
    end
  end
  return true
end

def contain_a (array)
  new_array = []
  array.each do |word|
    if word.include?('a')
      new_array << word
    end
  end
  new_array
end

def first_wa (array)
  array.each do |word|
    if word.to_s.include?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |word|
    if word.is_a?(String)
      new_array << word
    end
  end
  new_array
end

def count_elements (array)

end

def find_cool (array)
  array.each do |element|
    if element[:tempature].to_s == "cool"
      return element
    end
  end
end
