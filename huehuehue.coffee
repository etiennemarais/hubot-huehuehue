# Description:
#   A hubot addon to listen for various types of lolz. Will reply with a
#   huehuehue meme gif from the defined list.
#
# Dependencies:
#   "coffee-script": "^1.9.0"
#
# Configuration:
#   None
#
# Commands:
#   No special commands needed, it will listen for huehue
#
# Notes
#   See data/responses array for list of gifs.
#
# Author:
#   Etienne Marais <etienne.marais@olx.com>

responses = require './data/responses.json'

module.exports = (robot) ->
    robot.hear /(hue)+/i, (msg) ->
        msg.send msg.random responses
