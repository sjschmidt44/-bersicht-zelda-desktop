refreshFrequency: 10000
style: """
  top: 35%
  left: 31%

  .container
    width: 460px
    height: 400px

  .topText
    height: 50px
    width: 100%
    margin-top: 5px
    font-size: 20px
    color: white
    text-align: center
    font-family: 'emulogic', cursive

  .fire
    margin-top: 15px

  .fire:before
    content: ""
    position: absolute
    background: url('http://files.gamebanana.com/img/ico/sprays/zelda_fire_render.gif')
    height: 50px
    width: 50px
    background-size: cover
    margin-left: 100px

  .fire:after
    content: ""
    position: absolute
    background: url('http://files.gamebanana.com/img/ico/sprays/zelda_fire_render.gif')
    height: 50px
    width: 50px
    background-size: cover
    margin-left: 320px

  .oldMan
    background: url('http://www.zeldaelements.net/images/games/the_legend_of_zelda/characters/oldman.png')
    height: 50px
    width: 65px
    background-size: cover
    margin: 0 auto

  .sword
    background: url('http://www.bryce-snyder.com/hosted/sword.png')
    width: 23px
    height: 60px
    background-size: contain
    margin-left: 223px
    margin-top: 40px
"""

render: -> """
  <div class="super-container">
    <div class="container">
      <div class="topText"></div>
      <div class="fire"></div>
      <div class="oldMan"></div>
      <div class="sword"></div>
    </div>
  </div>
"""
