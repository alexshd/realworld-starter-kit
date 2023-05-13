{{define "layout"}}
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>{{template "title"}}</title>
    <link rel="stylesheet" href="/static/css/main.css" />
  </head>
  <body>
    {{template "body"}}
  </body>
</html>
{{ end }}
