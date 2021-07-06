# your code goes here
require 'pry'

def lowercase_all(array)
  array.map{|word| word.downcase}
end

def begins_with_r(array)
  lowercase_all(array).all?{|word| word[0] == "r"}
end

def contain_a(array)
  lowercase_all(array).select{|word| word.include?("a")}
end

def first_wa(array)
  lowercase_all(array).find{|word| word[0..1] == ("wa")}
end

def remove_non_strings(array)
  array.select{|element| element.is_a?(String)}
end

def count_elements(array)
  count = {}
  array.each do |item|
    if (!count.include?(item))
      count[item] = 1
    else
      count[item] += 1
    end
  end
  returnval = []
  count.each do|hash|
    #binding.pry
    hash[0][:count] = hash[1]
    returnval << hash[0]
  end
  returnval
end

def merge_data(keys, data)
  keys.each do |hash|
    #binding.pry
    data[0].each_key do|item|
      #binding.pry
      if (hash.each_key.map{|key| hash[key] == item }.any?)
        #binding.pry
        hash.merge!(data[0][item])
        #binding.pry
      end
    end
  end
end

def find_cool(data)
  cools = []
  data.each do |hash|
    if (hash.each_key.map{|key| hash[key] == "cool" }.any?)
      cools << hash
    end
  end
  cools
end

def organize_schools(schools)
  organized_schools = {}
  schools.each_key do|school|
    if (organized_schools.include?(schools[school][:location]))
      organized_schools[schools[school][:location]] << school
    else
      organized_schools[schools[school][:location]] = [school]
    end
  end
  organized_schools
end
