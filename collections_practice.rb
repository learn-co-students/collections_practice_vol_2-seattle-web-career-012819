def begins_with_r(tools)
  tools.each do | tool |
    if !tool.start_with?("r")
      return false
    end
  end
  true
end

def contain_a(array)
  array.select do | element |
    element.include?("a")
  end
end

def first_wa(array)
  array.find do | element |
    if element.is_a? String
      element.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.select do | element |
    element.is_a? String
  end
end

def count_elements(array)
  uniques = array.uniq
  uniques.collect do | element |
    element[:count] = array.count(element)
    element
  end

end

def merge_data(keys, data)
  new_array = []
  keys.each { | key_element |
    new_hash = {}
    new_hash[:first_name] = key_element[:first_name]
    data.each { | value_element |
      if value_element.has_key?(key_element[:first_name])
        value_element[key_element[:first_name]].each { | key, value | 
          new_hash[key] = value
        }
      end
    }
    new_hash[:motto] = key_element[:motto]
    new_array << new_hash
  }
  new_array
end

def find_cool(hashes)
  new_hashes = []
  hashes.each { | hash | 
    if hash[:temperature] == "cool"
      new_hashes << hash
    end
  }
  new_hashes
end

def organize_schools(schools)
  organized_schools = {}
  schools.each { |school_name, data| 
    location = data[:location]
    if !organized_schools.has_key?(location)
      organized_schools[location] = []
    end
    organized_schools[location] << school_name
  }
  organized_schools
end