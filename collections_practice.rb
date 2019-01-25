require "pry"

def begins_with_r(array)
  return_boolean = nil
  array.each do |word|
    if word.start_with?('r')
      return_boolean = true
    else
      return_boolean = false
    end
  end
  return_boolean
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  #wa_word = array.select { |word| word.start_with?('wa') }
return_value = nil
  array.each do |word|
    if word.class == String
      if word.start_with?("wa") && return_value.class != String
        return_value = word
      end
    end
  end
return_value
end

def remove_non_strings(array)
  array.select {|word| word.class == String }
end

def count_elements(array)
counted = []
i = 0
  while i < array.length
    counter = 0
    array.each do |element|
      if element == array[i]
        counter += 1
      end
    end
    counthash = {count: counter}
    counthash = array[i].merge(counthash)
    if counted.include? counthash
    else
      counted << counthash
    end
  #  counted << {count: counter, element}
  #  counted << element
    i += 1
  end
counted
end

def merge_data(keys, data)
i = 0
  keys.each do |person|
    person.each do |attribute, entry|
      data.each do |human|
        human.each do |name, stats|
          if name == entry
            keys[i] = keys[i].merge(stats)
          end
        end
      end
    end
  i += 1
  end
keys
end

def find_cool(array)
cool_person = []
  array.each do |person|
        person.each do |attribute, value|
      if value == "cool"
        cool_person << person
      end
    end
  end
cool_person
end

def organize_schools(school_hash)
organized_hash = nil
  school_hash.each do |school_name, location|
    #binding.pry
    location.each do |key, city|
      if organized_hash
        if organized_hash[city]
          organized_hash[city] << school_name
        else
          organized_hash = organized_hash.merge({city => [school_name]})
        end
      else
        organized_hash = {city => [school_name]}
      end
    end
  end
organized_hash
#binding.pry
end
