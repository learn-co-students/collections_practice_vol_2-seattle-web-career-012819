def begins_with_r(array)
  new_array = []
  array.each do |element|
      new_array << element if element[0] == "r"
  end
  if new_array.length == array.length
    true
  else
    false
  end
end

def contain_a(array)
  array.select { |element| element.include?('a') }
end

def first_wa(array)
	array.find do |word|
		word if word[0] == "w" && word[1] == "a"
	end
end

def remove_non_strings(array)
	array.delete_if {|element| element.class != String }
end

def count_elements(array)
	array.group_by { |i| i } .map { |key,value| key.merge( { :count => value.length } ) }
end

def merge_data(key, data)
  merged_data = []
  key.each do |person|
    # first iteration... person = key array's first hash {:first_name=>"blake", :motto=>"Have a koala-ty day!"}
    person.each do |attribute, name|
      # first iteration... attribute = :first_name, name = "blake"
      data.each do |person_info|
        # person_info = {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"},"ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
        person_info.each do |person_name, name_info|
          # person_name = "blake", name_info = {:awesomeness=>10, :height=>"74", :last_name=>"johnson"}
          # person_info = {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>{:awesomeness=>9, :height=>60, :last_name=>"dubs"}}
          if person_name == name
            merged_data << person.merge(name_info)
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(array)
  	array.select do |hash|
      hash.has_value?("cool")
  	end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school_name, location_hash|
    # 1st iteration... school_name = "flatiron school bk", location_hash = {:location=>"NYC"}
    location = location_hash[:location]
      if organized_schools[location]
        # 1st iteration... organized_schools = {"NYC"=>["flatiron school bk", "flatiron school"]}, location = "NYC"
        organized_schools[location] << school_name
      else
        organized_schools[location] = []
        organized_schools[location] << school_name
      end
  end
  organized_schools
end
