def begins_with_r(list)
  list.all? {|elt| elt.chr == 'r'}
end

def contain_a(list)
  list.find_all {|elt| elt.include?('a')}
end

def first_wa(list)
  list.find {|elt| elt.to_s.start_with?('wa')}
end

def remove_non_strings(list)
  list.delete_if {|elt| elt.class != String}
end

def count_elements(arr)
  uniq_elts = arr.uniq
  uniq_elts.map do |elt|
    {:count => arr.count(elt), :name => elt[:name]}
  end
end

def merge_data(keys, data)
  merged_data = data[0]
  keys.map do |x|
    x.merge(merged_data[x[:first_name]])
  end
end

def find_cool(list)
  list.find_all {|elt| elt[:temperature] == 'cool'}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |key, value|
    location = value[:location]

     if organized_schools["#{location}"]
      organized_schools["#{location}"] = organized_schools["#{location}"] << key
    else
      organized_schools["#{location}"] = [key]
    end
  end
  organized_schools
end
