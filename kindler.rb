$LOAD_PATH.unshift File.dirname(__FILE__) + '../../public/sinatra/lib'
require 'sinatra/base'

TMP_FILE = File.join(File.dirname(__FILE__),"tmp","kindler.html")
MAILER = File.join(File.dirname(__FILE__),"moby_mailer.rb")

class Kindler < Sinatra::Base
 set :root, File.dirname(__FILE__)
 post '/' do
   @contents = params[:contents]
   @title = /<h1>(.*)<\/h1>/.match(@contents)[1]
   @text = erb(:index)
   # FIXME make file I/O and script execution asynch
   File.open(TMP_FILE,"w") do |f|
     f.write @text
     f.flush
   end
   # Run the mailer
   `ruby #{MAILER}`
   
   @text
 end
end

Kindler.run! :host => 'localhost', :port => 8081