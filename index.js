import './index.css'
import { Elm } from './src/Main.elm'

if (process.env.NODE_ENV === 'development') {
  const ElmDebugTransform = await import('elm-debug-transformer')

  ElmDebugTransform.register({
    simple_mode: true,
  })
}

var app = Elm.Main.init({
  node: document.getElementById('root'),
})
