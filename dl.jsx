// var url = "https://api.github.com/orgs/basiljs/repos"
// var cmd = "curl -m 15 -L '" + url + "'";
// app.doScript("return do shell script item 1 of arguments", ScriptLanguage.applescriptLanguage, [cmd]);
var url = 'http://fabianmoronzirfas.me/assets/images/avatar/avatar-0.JPG';
var cmd = 'sh /Users/icke/tmp/download/download.sh /Users/icke/tmp/download/bin/ ' + url;
app.doScript('return do shell script item 1 of arguments', ScriptLanguage.applescriptLanguage, [cmd]);
