command: "echo [$(/usr/local/bin/yabai -m query --spaces | /usr/local/bin/jq '.[] | select(.focused == 1) | .index')]$(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .\"zoom-fullscreen\"' | sed 's/0//g;s/1/[ZF]/g')$(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .\"native-fullscreen\"' | sed 's/0//g;s/1/[Fullscreen]/g')$(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .floating' | sed 's/0//g;s/1/[Floating]/g')$(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .sticky' | sed 's/0//g;s/1/[Sticky]/g') $(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .app' | sed 's/^\"//g;s/\"$//g') - $(/usr/local/bin/yabai -m query --windows | /usr/local/bin/jq '.[] | select(.focused == 1) | .title' | sed 's/^\"//g;s/\"$//g')"

refreshFrequency: 1000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #D6E7EE
  font: 11px Hack
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: 500px
"""
