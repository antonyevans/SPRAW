class BrowseController < ApplicationController
require 'Parser.rb'

  def test
#    logger.debug("debug message")
    unless params[:input].nil? || params[:input] == ""
      @outputstring = $parser.getparsedstring(params[:input])
      @outputwordtree = "Coming Soon!"
    else
      @outputstring = "[            ]"
      @outputwordtree = "[            ]"
    end
  end

end
