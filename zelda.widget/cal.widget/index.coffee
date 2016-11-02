refreshFrequency: 300000
command: "/usr/local/bin/icalBuddy -sc  -eep notes -n eventsToday"
style: """
  top: 30%
  left: 13%
  color: #fff
  max-width: 25%
  font-family: emulogic

  div
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: .75em
    font-weight: 100

  h4
    padding-top: 5%
"""

renderLine: (string) -> """
  <div class='ical'>
    <div class='label'>#{string}</div>
  </div>
"""

update: (output, domEl) ->
  lines = output.split('\n')
  $(domEl).html '<h4>Upcoming Events</h4>'
  $(domEl).html 'No Events Today or Tomorrow' if output is ""
  for line in lines
  	$(domEl).append @renderLine(line)
