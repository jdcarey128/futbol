require 'csv'
require_relative './stat_tracker'
require_relative './game'

class GamesManager

  attr_reader :stat_tracker, :games

  def initialize(path, stat_tracker)
    @stat_tracker = stat_tracker
    @games = []
    create_games(path)
  end

  def create_games(games_table)
    @games = games_table.map do |data|
      Game.new(data)
    end
  end

  def lowest_total_score
    @games.min_by do |game|
      game.sum_score
    end.sum_score
  end

  def highest_total_score
    @games.max_by do |game|
      game.sum_score
    end.sum_score
  end

end
