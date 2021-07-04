# Ultra mega collections practice test
def begins_with_r(array)
	all_items_begin_with_r = array.one? do |word|
		!word.downcase.start_with?("r") # if an item does not start with "r"...
	end
	!all_items_begin_with_r # ...flip the boolean value to reflect correct logical result
end

def contain_a(array)
	items_with_an_a = array.select do |word|
		word.downcase.include?("a") # if the item includes an "a" we select it
	end
end

def first_wa(array)
	wa_item = array.find do |item|
		if item.respond_to?("chars") # check the datatype to make sure there is a string here
			item.downcase.start_with?("wa") # look for the starting prefix of the string we want to find
		end
	end
end

def remove_non_strings(array)
	array.delete_if do |item|
		item.class.to_s.downcase != "string" # extract class name, convert to string, downcase it for comparison
	end
end

def count_elements(count_array)
	output_array = [] # Prepare our output array
	count_array.each do |array_hash| # Iterate over our incoming array argument
		array_hash.each do |hash_key, hash_val|										# Iterate over each nested hash
			if output_array.length < 1	# If we have not added any hashes to our output array
				output_array << {hash_key => hash_val, :count => 1} 	# Add a new hash by default
			else 												# Otherwise...
				insert_new_hash = true																# Assume that we can add a unique hash to our output array
				output_array.each do |nested_hash|										# Iterate over the output array
					nested_hash.each do |key_match, val_match|					# Iterate over each nested hash
						if key_match == hash_key && val_match == hash_val # If we find a match between the argument and output
							nested_hash[:count] += 1												# Increment the count symbol by 1
							insert_new_hash = false													# Disable the adding of a unique hash to our output array
						end
					end
				end
				if insert_new_hash				# If no match was found
					output_array << {hash_key => hash_val, :count => 1} # Add a new unique hash to our output array
				end
			end
		end
	end
	output_array # Return the final output array
end

def merge_data(keys_array, data_array)
	output_array = [] # Prepare our output array
	keys_array.each do |keys_hash| 	# Iterate over our incoming keys array
		output_array << keys_hash 		# Add each nested hash as-is
	end
	data_array.each do |data_hash| 	# Iterate over our incoming data array
		data_hash.each do |d_hash_key, d_hash_val| 					# Iterate over each nested hash
			data_compatible = false 		# Assume that the data is incompatible by default
			output_array.each do |k_nested_hash| 							# Iterate over the output array
				k_nested_hash.each do |k_hash_key, k_hash_val| 	# Iterate over each nested hash
					if d_hash_key == k_hash_val # If the data array's key and key array's value match
						data_compatible = true 		# The data can be merged
					end
				end
				if data_compatible 						# If the data can be merged
					d_hash_val.each do |d_nested_key, d_nested_val| # Iterate over the nested hash
						k_nested_hash[d_nested_key] = d_nested_val 		# Use the bracket method to merge both data sets
					end
				end
			end
		end
	end
	output_array 			# Return the output array
end

def find_cool(cool_array)
	output_array = []
	cool_array.each do |array_hash|
		cool_ranch = false
		array_hash.each do |hash_key, hash_val|
			if hash_val.downcase.start_with?("cool") && hash_val.length == 4 && cool_ranch == false
				output_array << array_hash
				cool_ranch = true
			end
		end
	end
	output_array
end

def organize_schools(city_hash)
	output_hash = {}
	city_hash.each do |school_name_key, attribute_hash|
		output_key = nil
		attribute_hash.each do |attribute_key, attribute_val|
			if output_hash[attribute_val] == nil
				output_hash[attribute_val] = []
			end
			output_key = attribute_val
		end
		if output_key != nil
			output_hash[output_key] << school_name_key
		end
	end
	output_hash
end