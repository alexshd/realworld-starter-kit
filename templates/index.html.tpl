{{define "title"}}Elm app{{ end }} {{define "body"}}
<div id="app"></div>
<script src="/static/js/app.js"></script>
<script>
  var app = Elm.App.init({
    node: document.getElementById('app'),
  })
</script>
{{ end }}
