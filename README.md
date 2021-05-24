**This is alpha-grade software. Use at your own risk.**

A bunch of scripts to make it easy to send stuff from my browser directly to my
Kindle.

The process involves :

1. Using `kindler.js.bookmarklet` to send URL of page to Sinatra app
2. Using [Readability] gem to make the page readable
4. Doing some processing to clean up the HTML and downloading images locally
5. Using [KindleGen] to generate an ebook in .mobi format 
6. Sending out the generated file using Gmail

Quick setup instructions:

1. Install [kindler.js.bookmarklet](https://github.com/skn/kindler/raw/master/kindler.js.bookmarklet) from the repository
2. Customise and setup the Kindler Sinatra app locally. *This is probably the hardest step, and could be better documented*
3. Visit any article on the web, like [this](http://www.newyorker.com/archive/2001/05/28/010528fa_fact_parker?currentPage=all)
4. Use the Kindler bookmarklet.
5. If everything was setup properly, you should see a popup and an acknowledgement that the article has been sent. 
6. You should then recieve the article on your Kindle (app)

[Readability]:https://github.com/cantino/ruby-readability
[KindleGen]:http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000234621
