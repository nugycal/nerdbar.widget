command: "echo $(osascript -e 'get volume settings' | cut -d':' -f2 | cut -d',' -f1)$(osascript -e 'get volume settings' | cut -d':' -f5 | sed 's/false//g;s/true/ (muted)/g')"

refreshFrequency: 2000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 11px Hack
  right: 550px
  top: 6px
  span
    color: #7AAB7E
"""
