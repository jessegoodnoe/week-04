# 
# Here is where you will write the method #find_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def find_quote( filename, line_number = nil)
  if File.exist?(filename)
    lines = File.readlines(filename).collect { |line| line.chomp }
    line_number ||= rand(lines.length)
    lines[line_number % lines.length]
  else
    "Could not find a quote at this time"
  end
end