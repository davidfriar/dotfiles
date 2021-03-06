// an example to create a new mapping `ctrl-y`
//mapkey('<Ctrl-y>', 'Show me the money', function() {
//    Front.showPopup('a well-known phrase uttered by characters in the 1996 film Jerry Maguire (Escape to close).');
//});

// an example to replace `T` with `gt`, click `Default mappings` to see how `T` works.
//map('gt', 'T');

// an example to remove mapkey `Ctrl-i`
//unmap('<Ctrl-i>');

// set theme
settings.theme = `
.sk_theme {
    font-family: Noto Sans Nerd Font, Input Sans Condensed, Charcoal, sans-serif;
    font-size: 14pt;
    background: #24272e;
    color: #abb2bf;
}
.sk_theme tbody {
    color: #fff;
}
.sk_theme input {
    color: #d0d0d0;
}
.sk_theme .url {
    color: #06989a;
}
.sk_theme .annotation {
    color: #75507b;
}
.sk_theme .omnibar_highlight {
    color: #3465a4;
}
.sk_theme .omnibar_timestamp {
    color: #c4a000;
}
.sk_theme .omnibar_visitcount {
    color: #4e9a06;
}
.sk_theme #sk_omnibarSearchResult>ul>li:nth-child(odd) {
    background: #303030; !important
}
.sk_theme #sk_omnibarSearchResult>ul>li:nth-child(even) {
    background: #303030; !important
}
.sk_theme #sk_omnibarSearchResult>ul>li.focused {
    background: #3e4452;
}
#sk_status, #sk_find {
    font-size: 20pt;
}`;
// only keep E, R and T from Surfingkeys for gmail.com and twitter.com
unmapAllExcept(["E", "R", "T"], /mail.google.com|gmail.com|twitter.com/);
