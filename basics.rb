# puts("Bilal Ahmed")
# puts"Hello \nWorld"

# puts("   /|")
# puts("  / |")
# puts(" /  |")
# puts("/___|")

# # variables
# name = "Bilal Ahmad"
# age = "22"
# puts ("Hello my name is " + name + " and I'm " + age +" years old")
# flaws = nil; #means no value
# phrase = "Devsinc company"
# puts phrase.upcase().length()
# puts phrase.include?"company"
# puts phrase[0,5]
# puts phrase.index("v")
# puts 10%3
# num = 20.689
# puts "my marks are: " + num.to_s
# puts num.abs()
# puts num.round()
# puts num.ceil()
# puts num.floor()
# puts Math.sqrt(num)

# #########################I/O operation##################################
# puts "Enter Your Name: "
# name = gets.chomp()         #chomp remove extra line break after input var
# puts "Hello " + name +  ". Welcome to Devsinc.";

# puts "Enter a Number"
# number = gets.chomp().to_f
# puts "Enter Second Number"
# number2 = gets.chomp().to_f
# puts "The sum is: " + (number + number2).to_s

# puts "Enter a Color "
# color = gets.chomp()
# puts "Enter a plural noun"
# plural = gets.chomp()
# puts "Enter a Name"
# name = gets.chomp()

# puts("Roses are " + color)
# puts(plural + " are blue")
# puts("I love " + name)

########################## Arrays ##################################
# friends = Array['Bilal', 'Ahmad', 'Dg']
# puts friends[1]
# second = Array.new
# puts friends.sort()

########################## Hashes ##################################
# states = {
#     "New York" => "NY",
#     :Lahore => "LHR",
#     3 => "OR"
# }
# puts states[:Lahore]
# puts states[3]
# puts states["New York"]

########################## Method ##################################
# def welcome(name)
#     puts "Hello "+ name
# end
# welcome("Bilal")

# def cube(num)
#     return num*num*num , 70
# end
# value = cube(3)
# puts value

# def max(num1, num2, num3)
#     if num1 >= num2 and num1 >= num3
#         return num1
#     elsif num2 >= num1 and num2 >= num3
#         return num2
#     else
#         return num3
#     end
# end
# puts max(1, 2, 3)

# a = [1, 2, 3]
# # Example of a method definition that modifies its argument permanently
# def mutate(array)
#   array.pop
# end
# p "Before mutate method: #{a}"
# mutate(a)
# p "After mutate method: #{a}"

# we can use p also like we use puts

# Example of a method definition that does not mutate the caller
# a = [1, 2, 3]
# def no_mutate(array)
#   array.last
# end
# p "Before no_mutate method: #{a}"
# no_mutate(a)
# p "After no_mutate method: #{a}"

# def add_three(number)
#     number + 3
#   end
#   returned_value = add_three(4)
#   puts returned_value

# def add_three(n)
#     n + 3
#   end
# add_three(5).times { puts 'this should print 8 times'}

# def scream(words)
#     words = words + "!!!!"
#     puts words
#   end
#  scream("Yippeee")

########################## Flow control ##################################

# def display(a)
#     if a == 3
#     puts "a is 3"
#     elsif a == 4
#     puts "a is 4"
#     else
#     puts "a is neither 3, nor 4"
#     end
# end
# counter = 4;
# counter.times{
#     puts "Put in a number"
#     a = gets.chomp.to_i
#     display(a)
# }

# x= 3
# puts "x is NOT 3" unless x == 3
# if x == 3 then puts "X is 3" end          #one line syntex

# a = 5
# result = case a
# when 5
#    "a is 5"
# when 6
#    "a is 6"
# else
#    "a is neither 5, nor 6"
# end
# p result

# a = ""
# if a
#   puts "how can this be true?"
# else
#   puts "it is not true"
# end

# def check(val)
#     if val.length > 10
#         val.upcase
#     else
#         val
#     end
# end
# puts check("bilalahmed12")

# puts "Enter Number between 0 to 100"
# number = gets.chomp.to_i

# if number < 0
#   puts "You can't enter a negative number!"
# elsif number <= 50
#   puts "#{number} is between 0 and 50"
# elsif number <= 100
#   puts "#{number} is between 51 and 100"
# else
#   puts "#{number} is above 100"
# end

########################## Loops ##################################

# x = gets.chomp.to_i
# while x >= 0
#   puts x
#   x = x - 1
# end
# puts "Done!"

# x = gets.chomp.to_i
# until x < 0
#   puts x
#   x -= 1
# end
# puts "Done!"

# x = [1, 2, 3, 4, 5]
# for i in x do
#   puts i
# end
# puts "Done!"

# conditional_while_loop
# x = 0
# while x <= 10
#   if x == 3
#     x += 1
#     next
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# names.each { |name| puts name }

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# x = 1
# names.each do|name|
#   puts "#{x}. #{name}"
#   x += 1
# end

# x = ""
# until x == "STOP" do
#     puts"Do you want to continue? or STOP? "
#     x = gets.chomp.upcase
# end

# def counter(num)
#     if num <= 0
#         puts num
#     else
#         puts num
#         counter(num-1)
#     end
# end
# counter(5)

########################## Arrays ##################################
# a = [1, 2, 3, 4]
# puts a.map! { |num| num**2 }      #the ! mark make func work destructively.
# puts a

# a = [1, 2, [3, 4, 5], [6, 7]]
# puts a.flatten

# [1, 2, 3].product([4, 5])
# => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

# arr = [1, 3, 5, 7, 9, 11]
# number = 3
# puts arr.include?(number)

# 1. returns 1
#     arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]d
# 2. returns [1, 2, 3]
#     arr = [["b"], ["a", [1, 2, 3]]]

# arr = [["test", "hello", "world"],["example", "mem"]]
# puts arr.last.first

# arr = [1, 3, 5, 7, 9, 11]
# # arr.each_with_index do |item, index|
# #     puts "#{index+1}. #{item}"
# # end

# new_arr = arr.map do |item|
#     item + 2
# end
# p arr
# p new_arr

########################## Hashes ##################################

# person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}
# person.each do |key, value|
#   puts "Bob's #{key} is #{value}"
# end

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }
# immediate_family = family.select do |k, v|
#   k == :sisters || k == :brothers
# end
# arr = immediate_family.values.flatten
# p arr

# cat = {name: "whiskers"}
# weight = {weight: "10 lbs"}
# puts cat.merge(weight)
# puts cat
# puts weight
# puts cat.merge!(weight)
# puts cat
# puts weight

# user = {name: "bilal", age: 22, designation: "ASE"}
# user.each_key { |key| puts key}
# user.each_value {|value| puts value}
# user. each {|key, value| puts "#{key}: #{value}"}

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# # puts person[:name]

# if person.has_value?("Bob")
#     puts "Got it"
# else
#     puts "Nope!"
# end

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# result = {}
# words.each do |word|
#     key = word.split('').sort.join
#     if result.has_key?(key)
#         result[key].push(word)
#     else
#         result[key] = [word]
#     end
# end
# result.each_value do |v|
#     p v
# end

########################## Regex and more ##################################

# def check(str)
#     if  str =~ /lab/
#         puts str
#     else
#         puts "Not Found"
#     end
# end
# puts check("laboratory")

########################## Exercises ##################################
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 3, 2, 10]
# arr.each do |item|
#     if item > 5
#         puts item
#     end
# end

# new_arr = arr.select do |num|
#      num%2 != 0
# end
# puts new_arr

# arr.push(11)
# arr.unshift(0)

# arr.pop
# arr << 3
# puts arr.uniq

# old_hash = {:color => "red"}
# new_hash = {color: "blue"}
# puts old_hash , new_hash

# h = {a:1, b:2, c:3, d:4}
# puts h[:b]
# h[:e] = 5
# h.delete_if{ |k, v|  v < 3.5}
# puts h

# hash = {names: ["bilal", "ahmad", "relax"]}
# p hash

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]
# puts contacts["Joe Smith"][:email],contacts["Sally Johnson"][:phone]

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if { |word| word.start_with?("s") }
# puts arr
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if { |word| word.start_with?("s", "w") }
# puts arr

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']
# a = a.map{ |word| word.split}
# a =  a.flatten
# puts a

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}

# fields = [:email, :address, :phone]
# contacts.each do |name, hash|
#     fields.each do |item|
#         hash[item]  = contact_data.shift
#     end
# end
# puts contact

########################## 16-02-2021 ##################################

# def get_day(day)
#     day_name = ""
#     case day
#     when "mon"
#         day_name = "monday"
#     when "tues"
#         day_name = "tuesday"
#     else
#         day_name = "Not valid!!!"
#     end

#     return day_name
# end
# puts get_day("mon")

# <------------------- GUESS GAME (testing basics)-------------------------->
# secret_word = "zebra"
# guess = ""
# guess_limit = 3
# guess_count = 0
# flag = false

# while guess != secret_word and !flag
#     if guess_count < guess_limit
#         puts "Enter Guess: "
#         guess = gets.chomp
#         guess_count += 1
#     else
#         flag = true
#     end
# end

# if flag
#     puts "You Lose"
# else
#     puts "You Won"
# end

# <------------------- Exponent method (testing basics)-------------------------->
# def exp(pow, base)
#     result = 1
#     pow.times { result = result * base }
#     return result
# end
# puts exp(3,3)

# <------------------- Files ------------------------->
# File.open("rubytext.txt", "r") do |file|
#     for line in file.readlines()
#         puts line
#     end
# end

# file = File.open("rubytext.txt", "r")
# puts file.read
# file.close()

# File.open("rubytext.txt", "a") do |file|
#     file.write("Oscar, Accounting")
# end

# <-------------------------- Error handling ----------------------->
# begin
#     lucky_num["cat"]
#     num  = 10//0
# rescue ZeroDivisionError
#     puts "Division by zero"
# rescue TypeError => e
#     puts e
# end

# <--------------------------- Classes ---------------------->
# class Book
#     attr_accessor :title, :author, :pages, :ratings
#     def initialize(title, author, pages, ratings)
#         @title = title
#         @author = author
#         @pages = pages
#         @ratings = ratings
#     end
#     def has_recommandation
#         if @ratings > 4
#             return true
#         else
#             return false
#         end
#     end
# end

# book1 = Book.new("Harry Potter","JK harry",400,4.5)
# puts book1.title
# puts book1.has_recommandation

# <--------------------------- Create Quiz ---------------------->
# class Question
#     attr_accessor :prompt, :answer
#     def initialize(prompt, answer)
#         @prompt = prompt
#         @answer = answer
#     end
# end

# p1 = "What color are apples?\n(a)red\n(b)blue\n(c)green\n(d)yellow"
# p2 = "What color are bananas?\n(a)red\n(b)blue\n(c)green\n(d)yellow"
# p3 = "What color are peach?\n(a)red\n(b)orange\n(c)green\n(d)yellow"

# Questions= [
#     Question.new(p1,"a"),
#     Question.new(p2,"d"),
#     Question.new(p3,"b")
# ]
# def runTest(questions)
#     answer = ""
#     score = 0
#     for question in questions
#         puts question.prompt
#         answer = gets.chomp()
#         if answer == question.answer
#             score += 1
#         end
#     end
#     puts "You have "+score.to_s+"/"+questions.length.to_s + " Score"
# end

# runTest(Questions)

# <--------------------------- Inheritance ---------------------->
# class Chef
#     def make_chicken
#         puts "The chef makes chicken"
#     end
#     def make_salad
#         puts "The chef makes salad"
#     end
#     def make_special
#         puts "The chef makes bbq ribs"
#     end
# end

# class Italianchef < Chef
#     def make_special
#         puts "The chef makes special pasta"
#     end
# end

# chef = Chef.new()
# chef.make_chicken

# chef2 = Italianchef.new()
# chef2.make_special

# <--------------------------- Modules ---------------------->
# require_relative "module_tools.rb"
# include Tools

# Tools.sayhi("Bilal")
