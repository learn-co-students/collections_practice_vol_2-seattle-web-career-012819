require "pry"

def begins_with_r(array)
  new_arr = []
  array.each {|i| if i.start_with?("r") == false
  new_arr << i
end}
if new_arr.length >= 1
  false
else
  true
end
end

def contain_a(array)
  array.select do |i|
    i.include?("a")
  end
end

def first_wa(array)
  hold = []
  array.each {|i| hold << i.to_s}
  hold.find {|i| i.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String
  end
end

def count_elements(array)
  ayup =[]
  devo = [array.uniq.map { |x| [{:count => array.count(x)}, x] }].flatten!
  ayup << devo[0].merge(devo[1])
  ayup << devo[2].merge(devo[3])
  ayup
end

def merge_data(keys, data)
  ans_2 = []
  ans =[]
  data.each do |hash|
    hash.each do |person, stuff|
      ans << stuff
      end
    end
    keys.each do |hash|
    ans << hash
  end
  ans_2 << ans[0].merge(ans[2])
  ans_2 << ans[1].merge(ans[3])
ans_2
end

def find_cool(something)
  vitality =[]
  something.find do |hash|
    if hash.value?("cool")
vitality << hash
else end
end
vitality
end

def organize_schools(hash)
fff = {}
hash.each do |key, value|
  value.each do |loc, places|
    fff[places] = []
end
end
hash.each do |key, hash2|
  hash2.each do |loc, places|
    fff.each do |place, array|
      if places == place
        array << key
      else end
      end
    end
  end
fff
end
