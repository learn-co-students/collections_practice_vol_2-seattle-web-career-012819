require 'pry'

def begins_with_r(arr)
  # test_arr = %w(rolling residual waste sorry Riyadh)
  arr.all? { |word| word.downcase.start_with?("r") }
end

def contain_a(arr)
  arr.select { |word| word.downcase.include?("a") }
end

def first_wa(arr)
  arr.find { |word| word.downcase[0,2] == "wa" }
end

def remove_non_strings(arr)
  arr.delete_if { |elmt| elmt.class != String }
end

def count_elements(arr)
  ct_arr = []
  ct_hash = Hash.new(0)

  arr.each do |elmt|
    group_by_attr = elmt[:name]

    if ct_hash[group_by_attr] != 0
      ct_hash[group_by_attr][:count] += 1
    else
      ct_hash[group_by_attr] = elmt
      ct_hash[group_by_attr][:count] = 1
    end
  end
  ct_hash.map { |group_by_attr, count| ct_arr << count  }
  ct_arr
end

def merge_data(keys, data)
  keys.each { |elmt| elmt.merge!(data[0][elmt[:first_name]]) }
end

def find_cool(coll)
  coll.select { |elmt| elmt.values.include?("cool") }
end

def organize_schools(collection)
  new_hash = {}
  collection.each do |school, attr|
    if new_hash[attr[:location]]
      new_hash[attr[:location]] << school
    else
      new_hash[attr[:location]] = [school]
    end
  end
  new_hash
end
