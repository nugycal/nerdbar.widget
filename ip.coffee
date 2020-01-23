command: "echo $(ipconfig getifaddr en0)"

refreshFrequency: 2000 # ms

render: (output) ->
  "ip <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 11px Hack
  right: 442px
  top: 6px
  span
    color: #7AAB7E
"""
