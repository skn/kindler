**This is alpha-grade software. Use at your own risk.**

A bunch of scripts to make it easy to send stuff from my browser directly to my
Kindle.

The process involves :

1. Using [Readability] bookmarklet to make the page readable
2. Using `kindler.js.bookmarklet` to send some HTML extracted from the page to a Sinatra app running on localhost
3. Doing some processing to clean up the HTML and downloading images locally
4. Using [KindleGen] to generate an ebook in .mobi format 
5. Sending out the generated file using Gmail

Quick setup instructions:

1. Install [Readability] bookmarklet
2. Install [kindler.js.bookmarklet](https://github.com/deepakjois/kindler/raw/master/kindler.js.bookmarklet) from the repository
3. Customise and setup the Kindler Sinatra app locally. *This is probably the hardest step, and could be better documented*
4. Visit any article on the web, like [this](http://www.newyorker.com/archive/2001/05/28/010528fa_fact_parker?currentPage=all)
5. Use the Readability Bookmarklet, followed by the Kindler bookmarklet.
6. If everything was setup properly, you should recieve the article on your Kindle


Mail any suggestions to [deepak DOT jois AT gmail.com](deepak.jois@gmail.com)

[Readability]:https://www.readability.com/bookmarklets/
[KindleGen]:http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000234621