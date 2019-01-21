def begins_with_r(array)
  truth_count = 0
  array.each do |item|
    if item[0] == "r" 
      truth_count += 1
    end
  end
  if array.length == truth_count 
    return true 
  else
    return false
  end
end

def contain_a (array)
  a_words = []
  array.each do |item|
    if item.include?("a") == true
      a_words << item
    end
  end
  a_words
end

def first_wa(array)
  array.each do |item|
    if item[0..1] == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  strings_only = []
  array.each do |item|
    if item.class == String 
      strings_only << item
    end
  end
  return strings_only
end
    
def count_elements (array)
  my_hash = Hash.new(0) #empty hash with initial counts set to zero
  new_array = [] #empty array
  #new_hash = {}
  
  array.each do |item| #for given array, add a count to the empty hash for each occurence 
    my_hash[item] += 1
  end
  my_hash.each do |key, value| #create an array of hashes including the count and name as the new elements in the hash
    new_hash = {}
    new_hash[:count] = value
    new_hash[:name] = key[:name]
    new_array << new_hash
  end
  return new_array #return the array of hashes
end

def merge_data (data_one, data_two)
  merged_data = []
  data_one.each do |item|
    name = item[:first_name] 
    data_two_hash = data_two[0]
    x = data_two_hash[name].merge(item)
    merged_data << x
  end
  merged_data
end

def find_cool (hashes)
  new_array = []
  hashes.collect do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools (schools)
  organized_hash = {}
  schools.each do |key, value|
    
    if organized_hash.keys.include? (value[:location])
      organized_hash[value[:location]] << key 
    else
      organized_hash[value[:location]] = [key]
    end
  end
  organized_hash
end
