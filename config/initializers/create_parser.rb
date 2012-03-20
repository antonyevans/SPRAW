#this loads the parser at app initilization

require 'Parser.rb'
$parser = Parser.new
  #creates a new global parser object
  #the reason I did it this way is that it takes 2-4 seconds to load the parser
  #so this way, that 2-4 seconds only happens on server boot
  #the disadvantage is that there is only one parser object for all sessions
  #this will probably not scale very well if we get concurrent sessions