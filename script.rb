require 'nokogiri'
require 'open-uri'

puts "enter a word to look up"
@word = gets.chomp!

@key = '3b84ccd5-22a9-44ce-b22e-e5ffbef8e3b1'

@ref = "/xml/"

page = Nokogiri::HTML(open("http://www.dictionaryapi.com/api/v1/references/learners/xml/#{@word}?key=#{@key}")) 

puts page.css('entry_list entry dro dre').first.text