def begins_with_r(array)
  array.all? do |i|
    i.downcase.chr == "r"
  end
end

def contain_a(array)
  array.select {|i| i.downcase.include?("a")}
end

def first_wa(array)
  array.find {|i| i.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject {|i| i.class != String}
end

def count_elements(array)
  total = Hash.new(0)
  array.collect {|i| total[i]+=1}
    total.collect do |hash, number|
      hash[:count] = number
    end
  total.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|i| i if i.has_value?("cool")}
end

def organize_schools(schools)
  the_locations = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if the_locations[location] == NIL
          the_locations[location] = [school]
        else
          the_locations[location] << school
        end
      end
    end
  the_locations
 end

