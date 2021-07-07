# your code goes here
def begins_with_r(array) #Return true if every element of the tools array starts with an "r" and false otherwise.
  array.all? do |str|#the all? method returns true if the block never returns false or nil
    str[0] == 'r'
  end
end

def contain_a(array) #return all elements that contain the letter 'a'"
  array.select do |str|
    str.include?('a')
  end
end

def first_wa(array) #Return the first element that begins with the letters 'wa'"
  array.find do |str|
    str[0] == 'w' && str[1] == 'a'
  end
end

def remove_non_strings(array) #remove anything that's not a string from an array
  array.delete_if do |none_str|
    !none_str.is_a?(String)
  end
end

def count_elements(array) ##count_elements count how many times something appears in an array
  array.uniq.each do |id|
    count =0
    array.each do |id2|
      if id2 == id
        count +=1
      end
    end
    id[:count]=count
  end
end

def merge_data(name, info) ##merge_data combines two nested data structures into one
  arry = []
   name.each {|i| info.first.collect {|key,value| if i.values[0] == key then arry << i.merge(value) end}}
   arry
end

def find_cool(array) #find_cool find all cool hashes
    array.select do |i|
      i.any? do |key, value|
        value == "cool"
      end
    end
end

def organize_schools(array) #organize_schools organizes the schools by location
hash = {}
array.collect do |k, v|
  hash[v[:location]] = []
end
hash.each do |k,v|
  array.each do |k1, v1|
    if k ==v1[:location]
      v<<k1
    end
  end
end

    
end
