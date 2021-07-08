def begins_with_r(arr)
  arr.all? { |item| item.start_with?("r") }
end

def contain_a(arr)
  arr.select { |item| item.include?('a') }
end

def first_wa(arr)
  arr.delete_if { |item| !(item.is_a? String) }
     .find { |item| item.start_with?("wa") }
end

def remove_non_strings(arr)
  arr.delete_if { |item| !(item.is_a? String) }
end

def count_elements(arr)
  arr
    .group_by { |item| item[:name] }
    .map { |key, value| {name: key, count: value.length} }
end

def merge_data(keys, data)
  keys.map{|v| v.merge(data[0][v[:first_name]])}
end

def find_cool(arr)
  arr.select {|item| item[:temperature] == "cool"}
end

def organize_schools(hash)
  hash.group_by {|k,v| v[:location] }
      .each {|_,v| v.replace(v.map{|h| h[0]}) }
end