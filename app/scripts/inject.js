// Inject the main.min.js file
var s = document.createElement('script');
s.src = chrome.extension.getURL("scripts/main.min.js");
s.onload = function() {
    this.parentNode.removeChild(this);
};
(document.head||document.documentElement).appendChild(s);
