This is a bunch of scripts to make it easy to send stuff from my browser to my Kindle smoothly.

*This needs to be documented better. But you can figure it out by reading the source code.*

The process involves :

1. Using [Readability] bookmarklet to make the page readable
2. Using `kindler.js.bookmarklet` to send some HTML extracted from the page to a Sinatra app running on localhost
3. Doing some processing to clean up the HTML and downloading images locally
4. Using [KindleGen] to generate an ebook in .mobi format 
5. Sending out the generated file using Gmail

**This is alpha-grade software. Use at your own risk.**

[Readability]:http://lab.arc90.com/experiments/readability/
[KindleGen]:http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000234621