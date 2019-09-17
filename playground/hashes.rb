# HASHes also called DICTIONARIES
sample_hash = {'a'=>1, 'b'=>2, 'c'=>3}
my_details = {'name'=> 'kurt', 'age'=> '27', 'birth_place'=> 'california'}
# symbols
my_hash ={ :a => 'one', :b=> 'two', :c=> 'three'}
my_hash[:e] = "four"
# p my_details['name']
# sample_hash.keys, returns only keys
# sample_hash.values, returns only values
p my_details

my_details.each do |key, value|
    p "The class for key is #{key.class} and the value is #{value.class}."
end


