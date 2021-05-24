# Recieve some HTML from a Readability-bookmarklet enhanced page, format it
# and run the moby_mailer.rb script on it to mail it from my gmail account
# to the Kindle free account
#
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../../public/sinatra/lib')
require 'sinatra/base'
require 'fileutils'
require 'iconv'
require 'rubygems'
require 'readability'
require 'open-uri'

# Create a `tmp` folder under the root to write the generated file
TMP_FILE = File.join(File.dirname(__FILE__),"tmp","kindler.html")
TMP_DIR = File.dirname(TMP_FILE)
MAILER = File.join(File.dirname(__FILE__),"moby_mailer.rb")

class Kindler < Sinatra::Base
 set :root, File.dirname(__FILE__)
 get '/' do
   dest_url = params[:url]
   source = open(dest_url).read
   cleaned = Readability::Document.new(source, :tags => %w[div p img a], :attributes => %w[src href],)
   title = cleaned.title
   contents = cleaned.content

   text = '<html><head><title>' +title + '</title></head><body>' + contents + '</body></html>'
   # FIXME make file I/O and script execution asynch
   ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
   conv_text = ic.iconv(text)
   File.open(TMP_FILE,"w") do |f|
     f.write conv_text
     f.flush
   end
   # Run the mailer
   `ruby #{MAILER}`
   Dir.foreach(TMP_DIR) do |f|
     if f == '.' or f == '..' then next
     #else FileUtils.rm( File.join(TMP_DIR,f) )
     end
   end

   @win = '<p><br><br>Entry sent to Kindle. You can close this window now! <br><br><a class="btn btn-default" href="JavaScript:window.close()">Close</a></p>'
   @win
 end
end

Kindler.run! :host => 'localhost', :port => 8081
