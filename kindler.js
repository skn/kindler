javascript: (function() {
    removeElement("rdb-article-meta");
    removeElement("rdb-footnotes");
    removeElement("article-marketing");
    removeElement("article-url");
    removeElement("legacy-bkmk");
    removeElement("scroll-bullet");
    removeElement("archive-link-wrap");
    removeElement("print-url");
    removeElement("rdb-share-links");
    var html = document.getElementById("rdb-article").innerHTML;
    var form = document.createElement("form");
    document.body.appendChild(form);
    form.action = "http://127.0.0.1:8081";
    form.method = "POST";

    var textarea = document.createElement("textarea");
    textarea.name = "contents";
    textarea.value = html;

    var title = document.createElement("input");
    title.name = "title";
    title.value = document.getElementById("article-entry-title").innerHTML;
    title.value = prompt('Please check the title', title.value); 

    if (title.value != '' && title.value != null) {
        form.appendChild(textarea);
        form.appendChild(title);
        form.submit();
    }
    function removeElement(id) {
        try{
            var element = document.getElementById(id);
            element.parentNode.removeChild(element);
        }
        catch(e) {}
    };
})();
