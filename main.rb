# Use the Nokogiri gem to parse the HTML document.
# Extract all l1 elements and print them out to the terminal.
# Each li element should be on a new line.

require "nokogiri"

doc = Nokogiri::HTML(File.open("index.html"))

list_items = doc.xpath("//li")

list_items.each do |item|
  puts item.text
end


# example from class notes:
# doc.css("li").each { |li| puts li.text }
