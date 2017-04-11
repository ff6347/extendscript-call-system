Extendscript Call System
========================

Exploration on how to call system commands from extendscript. Mainly for InDesign. 

----

Dear all. I think this was already discussed several times but I can't find any good example around the web. How do you execute system commands on windows? On macOS we use (in Basil.js) these snippets:  

Snippet 1:  

    var cmd = "pwd";
    app.doScript("return do shell script item 1 of arguments", ScriptLanguage.applescriptLanguage, [cmd]); 

And to make a call to an URL over HTTP/s this one:  

Snippet 2:  

    var url = "https://api.github.com/orgs/basiljs/repos"
    var cmd = "curl -m 15 -L '" + url + "'";
    app.doScript("return do shell script item 1 of arguments", ScriptLanguage.applescriptLanguage, [cmd]);

Last this is our call to download a file from the web.  

Snippet 3 (shell script):  

    #!/bin/bash
    mkdir -p "$1"
    cd "$1"
    if [ -z "$3" ]
      then
        curl -L -O "$2"
      else
        curl -L -o "$3" "$2"
    fi



Snippet 4 (extendscript):  

    var url = 'http://fabianmoronzirfas.me/assets/images/avatar/avatar-0.JPG';
    var cmd = 'sh /Users/icke/tmp/download/download.sh /Users/icke/tmp/download/bin/ ' + url;
    app.doScript('return do shell script item 1 of arguments', ScriptLanguage.applescriptLanguage, [cmd]);


Has anybody an equivalent for snippet 1 + 4 for windows?