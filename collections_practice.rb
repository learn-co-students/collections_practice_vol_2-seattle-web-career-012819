def begins_with_r(items)
  items.all? { |item| item.chr == 'r' }
end

def contain_a(items)
  items.find_all { |item| item.include?('a')}
end

def first_wa(items)
  items.find { |item| item.to_s.start_with?('wa')}
end

def remove_non_strings (items)
  items.delete_if { |item| item.class != String}
end

def count_elements(items)
  uniq_items = items.uniq
  uniq_items.map do |item|
    {:count => items.count(item), :name => item[:name]}
  end
end

def merge_data(keys, data)
  this_data = data[0]
  keys.map do |key|
    key.merge(this_data[key[:first_name]])
  end
end

def find_cool(items)
  items.find_all do |item|
    item[:temperature] == 'cool'
  end
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
