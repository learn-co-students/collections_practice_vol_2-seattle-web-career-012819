def begins_with_r(array)
  array.each do |word|
    if word[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(array)
  a_array = []
  array.each do |word|
    if word.include? "a"
      a_array.push(word)
    end
  end
  a_array
end

def first_wa(array)
  array.each do |word|
    if word.is_a? String
      if word.include? "wa"
        return word
      end
    end
  end
  a_array
end

def remove_non_strings(array)
  new_array = []
  array.collect do |item|
    if item.is_a? String
      new_array.push(item)
    end
  end
  new_array
end

def count_elements(array)
  new_array = array.uniq
  hash_array = []
  new_array.each do |value|
    count = 0
    array.each do |value2|
      if value == value2
        count += 1
      end
    end
    new_hash = Hash.new
    new_hash[:count] = count
    new_hash2 = new_hash.merge(value)
    hash_array.push(new_hash2)
  end
  hash_array
end

def merge_data(keys, data)
  new_array = []
  keys.each do |item|
    data.each do |element|
    #if value firstname is a key in data then get value from data
      firstname = item.fetch(:first_name)
      if element.has_key?(firstname)
        new_hash = Hash.new
        new_hash = item.merge(element.fetch(firstname))
        new_array.push(new_hash)
      end
    end
  end
  new_array
end

def find_cool(hash)
  new_array =[]
  hash.each do |item|
    if item.has_value?("cool")
      new_array.push(item)
    end
  end
  new_array
end

def organize_schools(array)
  #pattern [{school =>{:location => city}}]
  new_array = []
  location_array = (array.values()).uniq
  location_array2 = []
  
  location_array.each do |item|
    city = item.fetch(:location)
    location_array2.push(city)
  end
  location_array2 = location_array2.sort()
  
  location_array3 = Hash.new

  location_array2.each do |city|
    city_array = []
    array.each do |school|
      if city == school[1].values.join()
        city_array.push(school[0])
      end
    end
    location_array3[city] = city_array
  end
  location_array3
end