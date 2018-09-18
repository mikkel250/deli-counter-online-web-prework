# Write your code here.

katz_deli = ["joe", "bob", "ira"]
number = 0

def take_a_number(katz_deli)
  number += 1
  puts "Welcome. You are number #{number} in line."
  number
end

def line(katz_deli)
  line = []
  katz_deli.each.with_index { |x, i| line.push(" #{i + 1}. #{x}") }
  if !katz_deli.empty?
    puts "The line is currently:#{line.join}"
  else
    puts "The line is currently empty."
  end
end

=begin
def take_a_number(katz_deli, new_person)
  katz_deli << new_person
  puts "Welcome, #{new_person}. You are number #{katz_deli.length} in line."
end
=end
def now_serving(katz_deli)
  if !katz_deli.empty?
    puts "Currently serving #{number}."
    number -= 1
    katz_deli.shift
    
  else
    puts "There is nobody waiting to be served!"
  end
end

take_a_number(katz_deli)
now_serving(katz_deli)