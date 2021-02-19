# <------------------------------------------------------>
# # Challange # 01
# # BUILD A PROGRAM THAT UTILIZES REGULAR EXPRESSIONS TO
# # EXTRACT A SPECIFIC SET OF INTEGERS FROM A STRING IN RUBY.
# <------------------------------------------------------>

# arr = [
#   "Web IconHTML & CSS100%",
#   "Command LineLearn the Command Line100%",
#   "Ruby IconRuby50%",
#   "Rails IconLearn Ruby on Rails100%",
#   "Git IconLearn Git100%",
#   "SassLearn Sass20%",
#   "JQuery IconjQuery1%",
#   "Angular JSLearn AngularJS 1.X100%",
#   "Javascript IconLearn JavaScript55%"
# ]

# #Output [100, 100, 50, 100, 100, 20, 1, 100, 55]

# def parseArray(arr)
#     new_arr = []
#     arr.each do |record|
#         new_arr.push(record.scan(/\d+/).last.to_i)
#     end
#     return new_arr
# end
# puts parseArray(arr)

# <------------------------------------------------------>
# Challange # 02
# BUILD A PROGRAM THAT REVERSES THE WORDS IN A STRING,
# WHERE WORDS ARE SEPARATED BY ONE OR MORE SPACES.
# <------------------------------------------------------>

# input = "dog lazy the over jumped fox brown quick The"
# puts  input.split(' ').reverse.join(' ')
# Output: "The quick brown fox jumped over the lazy dog"

# <------------------------------------------------------>
# Challange # 03
# Mapping Array Data in Ruby Using Zip and Splat
# <------------------------------------------------------>
# headers = [
#     '1B','2B','3B','SS','C','P','LF','CF','RF'
# ]
# astros = ['Gurriel','Atuve','Bregamn','Correa','Gattlis','Keuchil','Beltran','Springer','Reddick']
# rangers = [
#     'filedersb','andrus','odor','beltre','lucroy',
#     'darvish','comez','choo','mazara'
# ]
# #p headers.zip(astros,rangers)

# def useSplat(headers, *item)
#     p headers.zip(*item)
# end
# useSplat(headers,astros,rangers)

# <------------------------------------------------------>
# Challange # 04
# How to Generate an Array of Random Numbers in Ruby
# <------------------------------------------------------>

# arr = []
# for count in 1..20
#     arr.push(rand(1..1000))
# end
# puts arr

# <----------------------------------------------------------------->
# Challange # 05
# IMPLEMENT A METHOD THAT FINDS THE LARGEST INTEGER IN AN ARRAY
# WITHOUT USING RUBY’S BUILT-IN MAX METHOD. ADDITIONALLY,
# ENSURE THAT THE ALGORITHM CAN WORK EFFICIENTLY ON
# LARGE SETS OF DATAy
# <----------------------------------------------------------------->
# arr = [1, 6, 3, 10, 5, 3]
# max = 0;
# arr.each do |item|
#     if item > max
#         max = item
#     end
# end
# puts max

# <----------------------------------------------------------------->
# Challange # 06
# Finding Leap Years in Ruby
# <----------------------------------------------------------------->
# years = (1900..1999).to_a
# leap_year = []
# years.each do |year|
#         if year%4 == 0
#             leap_year.push(year)
#         end
# end
# puts leap_year

# <----------------------------------------------------------------->
# Challange # 07
# CREATE A METHOD THAT CHECKS TO SEE IF A WORD IS A PALINDROME OR NOT.
# <----------------------------------------------------------------->
# puts "Enter a String: "
# str = gets.chomp()
# def checkPalindrome(str)
#     if str.reverse == str
#         return true
#     else
#         return false
#     end
# end
# puts "#{str} is a palindrome: "+ checkPalindrome(str.upcase).to_s

# <----------------------------------------------------------------->
# Challange # 09
# CREATE A HASH CONVERTER METHOD THAT CONVERTS A HASH
# TO A URL FRIENDLY STRING.
# <----------------------------------------------------------------->
# hash = { :topic => "baseball", :team => "astros" }
# def hashconverter(hash)
#     hash.map{ |item| item * "="} * "&"
# end
# puts hashconverter(hash)

# <----------------------------------------------------------------->
# Challange # 10
# Build a Currency Converter in Ruby
# <----------------------------------------------------------------->
# def currency_converter(amount, loc)
#     case loc
#     when "US" then "$%.2f" % amount
#     when "Japan" then "¥%.0f" % amount
#     when "UK" then ("£%.2f" % amount).gsub('.',',')
#     end
# end
# puts currency_converter(12.5,"UK")
# puts currency_converter(19.5,"Japan")
# puts currency_converter(12.8,"US")

# <----------------------------------------------------------------->
# Challange # 11    [String interpolation]
# Build an HTML Heading Generator in Ruby
# <----------------------------------------------------------------->
# def titleCreator(str)
#     heading = %w{h1 title_placeholder h1}   #array creation 2nd method
#     heading[1] = str
#     "<%s>%s</%s>"%heading
# end
# puts titleCreator("Welcome!!!")

# <----------------------------------------------------------------->
# Challange # 12
# Using Ruby Here Doc Syntax to Dynamically Generate HTML Code
# <----------------------------------------------------------------->
# def htmlGenerator(title)
# <<HTML
# <!DOCTYPE html>
# <html lang = "en">
# <head>
# 	<title>#{ title }</title>
# 	<meta name="viewport" content="width=device-width, initial-scale=1">
# </head>
# <body>
# </body>
# </html>
# HTML
# end
# puts htmlGenerator("Heello World")

# <----------------------------------------------------------------->
# Challange # 13
# Coding Exercise: Word Counting and Reporting in Ruby
# <----------------------------------------------------------------->
# str = "- the quick brown fox / jumped over the lazy dog"
# hash = Hash.new(0)
# puts "Total count of words in string is: " + (str.scan(/\w+/).count).to_s
# str.scan(/\w+/){|item| hash[item] += 1}
# puts hash

# <----------------------------------------------------------------->
# Challange # 14
# Generate the Alphabet in Ruby
# <----------------------------------------------------------------->
# arr = ('a'..'z').to_a
# p arr

# <----------------------------------------------------------------->
# Challange # 15
# Add the Next Letter or Number in a String Sequence in Ruby
# <----------------------------------------------------------------->
# def nextitem(str)
#     p  str + str.next.slice(-1)
# end
# nextitem('abc')

arr = []
arr << ARGV
if arr[0][0] == '-a'
  puts arr[0][1].split('/').last
else
  puts arr[0][1]
end
