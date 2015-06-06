require "pry"
# your code goes here
def begins_with_r(tools)
  # Return true if every element of the tools array starts with an "r" and false otherwise.
  tools.all? { |tool| tool[0] == 'r' }
end

def contain_a(words)
  # return all elements that contain the letter 'a'
  words.select { |word| word.include?('a')  }
end

def first_wa(words)
  # Return the first element that begins with the letters 'wa'
  words.find { |word| word.to_s.start_with?('wa') }
end

def remove_non_strings(array)
  # remove anything that's not a string from an array
  array.reject { |e| e.class != String }
end

def count_elements(array)
  # count how many times something appears in an array
  # need a list of of values to compare against
  new_hashes = []
  array.uniq.each do |hash| 
    hash.each do |key, value| 
      new_hashes << {
        name: value, 
        count: array.count { |new_hash| new_hash == hash }
      } 
    end 
  end
  new_hashes
end

def merge_data(keys, data)
  # combines two nested data structures into one
  merged_data = []
  i = 0
  data.each do |main_hash|
    main_hash.each do |name, properties_hash|
      merged_data << properties_hash.merge(keys[i])
      i += 1
    end
  end
  merged_data
end

def find_cool(array)
  # find all cool hashes
  array.select {|person| person[:temperature] == "cool"}
end

def organize_schools(schools)
  # organizes the schools by location
  cities = schools.collect{|name, property| property[:location]}.uniq
  organized_schools = {}
  cities.each {|city| organized_schools[city] = []}
  schools.each do |name, property|
    if cities.include?(property[:location])
      organized_schools[property[:location]] << name
    end
  end
  organized_schools
end