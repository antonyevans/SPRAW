class BrowseController < ApplicationController
  def test
    unless params[:input].nil? || params[:input] == ""
      @outputstring = $parser.getparsedstring(params[:input])
      @outputwordtree = "Coming Soon!"
    else
      @outputstring = "[            ]"
      @outputwordtree = "[            ]"
    end
  end

end
