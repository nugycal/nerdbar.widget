command: "echo $(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}' | head -c 14)"

refreshFrequency: 2000 # ms

render: (output) ->
  "net <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #D5C4A1
  font: 11px Hack
  right: 322px
  top: 6px
  span
    color: #7AAB7E
"""
