

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def url_builder(url, params = {:results => 10})
  url_params = []
  params.each { |key,value| url_params << "#{key.to_s}=#{value.to_s}" unless value.nil? }
  "#{url}?#{url_params.join('&')}"
end