# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def search_for_quote(params = {})
  quotes = all_quotes(params.delete(:file))
  
  params.each do |method, param|
    quotes = quotes.find_all do |quote|
      quote.send("#{method}?", param)
    end
  end

    # Simple way.
    # criteria = /.*/
    # criteria = /#{params[:include]}/     if params.has_key? :include
    # criteria = /^#{params[:start_with]}/ if params.has_key? :start_with
    # criteria = /#{params[:end_with]}$/   if params.has_key? :end_with
    # if File.exist? file_name
    #   quotes = File.readlines(file_name).select { |line| line.chomp! =~ criteria }
    # end

  quotes
end