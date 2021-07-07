require "pry"

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
  new_array = []
  new_hash = {}

  array.each do |element|
    if new_hash.keys.include?(element[:name]) == false
      new_hash[element[:name]] = 1
    else
      new_hash[element[:name]] += 1
    end
  end

  new_hash.each do |k,v|
    temp_hash = Hash.new
    temp_hash[:name] = k
    temp_hash[:count] = v
    new_array.push(temp_hash)
  end
  new_array
end

def merge_data(hash1, hash2)
  hash1.each do |element|
    hash2[0][element[:first_name]].each do |k,v|
      element[k] = v
    end
  end
end

def find_cool (array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end
  new_array
end

def organize_schools(array)
  loc_hash = {}

  array.each do |k|
    if loc_hash.keys.include?(k[1][:location]) == false
      loc_hash[k[1][:location]] = [k[0]]
    else
      loc_hash[k[1][:location]] << k[0]
    end
  #  binding.pry
  end
  loc_hash
end
