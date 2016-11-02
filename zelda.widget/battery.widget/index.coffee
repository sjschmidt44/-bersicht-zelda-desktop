command: "pmset -g batt | grep -o '[0-9]*%'"

refreshFrequency: 60000

style: """
  top: 0
  right: 0
  color: #fff
  font-family: emulogic

  .battery
    width: 100%
    display: block
    text-shadow: 0 0 1px rgba(#000, 0.5)
    font-size: 1em
    margin: 0
    padding: 0

  ul
    padding: 0

  .hearts
    list-style: none
    display: inline-block

  img
    width: 1.75em
    height: 1.75em

  h2
    text-align: center
"""


render: -> """
  <style>
    @keyframes blink {
      0% {
        opacity: 1;
      }
      50% {
        opacity: 0;
      }
      100% {
        opacity: 1;
      }
    }
    .blink {
      animation: blink 2s;
      animation-iteration-count: infinite;
    }
  </style>
  <div class='battery'>
    <h2><span>-</span>BATTERY<span>-</span></h2>
    <ul>
      <li id="0" class="hearts"></li>
      <li id="1" class="hearts"></li>
      <li id="2" class="hearts"></li>
      <li id="3" class="hearts"></li>
      <li id="4" class="hearts"></li>
    </ul>
  </div>
"""

update: (output, domEl) ->
  process = output.split "%"
  div = $(domEl).find('.battery')
  decNum = (Number) process[0] / 20
  range = Math.ceil decNum

  renderProcess = (num, flag) ->
    if flag
      $(domEl).find('#' + num).html "<img class='blink' src='zelda.widget/battery.widget/emptyheart.png'>"
    else
      $(domEl).find('#' + num).html "<img src='zelda.widget/battery.widget/emptyheart.png'>"


  for i in [0...range] by 1
    if (i + .51) > (decNum) && i == (range - 1)
      renderProcess(i, true)
    else
      renderProcess(i)
