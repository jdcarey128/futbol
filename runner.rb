require './lib/stat_tracker'

game_path = './data/games.csv'
team_path = './data/teams.csv'
game_teams_path = './data/game_teams.csv'

game_path_sample = './data/games_sample.csv'
team_path_sample = './data/teams_sample.csv'
game_teams_path_sample = './data/game_teams_sample.csv'

locations = {
  games: game_path,
  teams: team_path,
  game_teams: game_teams_path
}

locations_sample = {
  games: game_path_sample,
  teams: team_path_sample,
  game_teams: game_teams_path_sample
}

stat_tracker_sample = StatTracker.from_csv(locations_sample)
# stat_tracker = StatTracker.from_csv(locations)

require 'pry'; binding.pry
