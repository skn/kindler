javascript:(function(){
removeElement("readFooter");
removeElement("readTools");
var html = document.getElementById("readInner").innerHTML;
var form = document.createElement("form");
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