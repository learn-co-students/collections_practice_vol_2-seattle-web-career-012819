require "pry"

def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end    
end 

   
def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end
    
 def first_wa(array)
   array.find do |word|
     word[0..1] == ("wa")
   end
 end 
 
 def remove_non_strings(array)
   array.delete_if do |element|
     element.is_a?(String) == false
   end
 end
 
#I did not understand this one at all 
def count_elements(array)
  counted = []
  array.each do |item|
    item[:count] = array.count(item)
    counted << item
  end
  return counted.uniq{ |item|
    item[:name]
  }
end
 
 def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end
 
 #Built this out mostly myself, looked at past pulls for the ending, but still didn't work :(
 
 #def merge_data(keys, data)
#   merged_data = []
 #  keys.each do |name_hash|
  #     name_hash.each do |key, value|
   #      data.each do |hash|
    #        hash.each do |key2, value2|
     #     if key2 == value
      #     storage_hash = [{:first_name => key2}]
       #    storage_hash << value2
        #   merged_data << storage_hash[0].merge(storage_hash[1])
        #  end
      ##  end
    # end
  # end
  # merged_data
# end
#
# Antother answer on pull that made sense to me
#def merge_data(keys,data)
#	merged = []
#	keys.each do |key_first|
#	data.each do |person|
#		person.each do |k,v|
#	if key_first[:first_name] == k
#		v[:first_name] = k
#	merged << v
#	 end
#	end
#	end
#	end
#	merged
#end

   
 def find_cool(array) 
   array.select do |hashes|
     hashes.has_value?("cool")
   end
 end
 
 def organize_schools(schools)
   organized_schools = {}
   schools.each do |school, data|
     data.each do |key, city|
       if organized_schools[city] == nil 
         organized_schools[city] = [school]
       else 
         organized_schools[city] << school
    end
   end
  end
  organized_schools
 end
   
   
   
   
   
   