local ls = require 'luasnip'
-- some shorthands...
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets('templ', {
  snip('templbase', {
    text 'templ Base(title string) {',
    text { '', '\t<!DOCTYPE html>', '\t<html lang="en">', '\t\t<head>' },
    text { '\t\t\t<meta charset="UTF-8"/>', '\t\t\t<meta name="viewport" content="width=device-width, initial-scale=1"/>' },
    text '\t\t\t<title>{ ',
    insert(1, 'title'),
    text ' } | by Kaare</title>',
    text { '\t\t\t<meta name="color-scheme" content="light dark"/>' },
    text { '\t\t\t<!-- <link href="assets/css/output.css" rel="stylesheet"/> -->' },
    text '\t\t\t<script src="',
    insert(2, '../assets/js/htmx.min.js'),
    text '"></script>',
    text { '\t\t</head>', '\t\t<body>' },
    text { '\t\t\t<!-- class="flex bg-slate-100 p-8 justify-center" -->', '\t\t\t<main>' },
    text '\t\t\t\t@',
    insert(3, 'navbar()'),
    text { '', '\t\t\t\t{ children... }' },
    text '\t\t\t\t@',
    insert(4, 'footer()'),
    text { '', '\t\t\t</main>', '\t\t</body>', '\t</html>', '}' },
  }),

  snip('templcomp', {
    text 'templ ',
    insert(1, 'ComponentName'),
    text '() {',
    text { '', '\t@components.Base("' },
    insert(2, 'Title'),
    text '") {',
    text { '', '\t\t' },
    insert(3),
    text { '', '\t}', '}' },
  }),
})
