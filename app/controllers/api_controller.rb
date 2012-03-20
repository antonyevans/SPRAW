class ApiController < ApplicationController
  def parse
    if params[:input].length <251 && !params[:input].empty?
      input = params[:input]
      options = params[:options]
      
      if options == "tree"
        tree = $parser.gettree(input)
        output =  tree.to_json
      else
        sentence = $parser.getparsedsentence(input)
        output = sentence.to_json 
      end
      send_data(output, :type => :xml)
    end
  end
end
