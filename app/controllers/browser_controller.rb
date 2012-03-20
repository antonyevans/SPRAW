class BrowserController < ApplicationController



  def test
#    logger.debug("debug message")
#    parser = Parser.new
    
    unless params[:input].nil? || params[:input] == ""
      @outputstring = $parser.getparsedstring(params[:input])
      @outputwordtree = "Coming Soon!"
    else
      @outputstring = "[            ]"
      @outputwordtree = "[            ]"
    end
  end
end
