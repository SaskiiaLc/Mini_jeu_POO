require 'bundler'
require 'pry'
Bundler.require
require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("lavania")
player2 = Player.new("Nicodemus")



binding.pry