javascript:(function(){
removeElement("rdb-article-meta");
var html = document.getElementById("rdb-article").innerHTML;
var form = document.createElement("form");
document.body.appendChild(form);
form.action = "http://127.0.0.1:8081";
form.method = "POST";
var textarea = document.createElement("textarea");
textarea.name = "contents";
textarea.value = html;
form.appendChild(textarea);  
form.submit();
function removeElement(id){
var element = document.getElementById(id);
element.parentNode.removeChild(element);
};})();