
require "pry"


# Write your code here!
def game_hash
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1,
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7,
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,
        }
        
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2,
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10,
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5,
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0,
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12,
        }
      }
    }
  }
end


def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    team_data[:players].each do |player, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!

      #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
        puts data_item
      end
    end
  end
end

def find_player(name)
  game_hash.each do |team, team_data|
    #binding.pry
    if team_data[:players].include?(name)
      return team_data[:players][name]
    end
  end
  nil
end

def num_points_scored(name)
  player = find_player(name)
  player[:points]
end

def shoe_size(name)
  player = find_player(name)
  player[:shoe]
end

def find_team(team_name)
  game_hash.each do |team, team_data|
    if team_data[:team_name] == team_name
      return team_data
    end
  end
  return nil
end

def team_colors(team_name)
  team = find_team(team_name)
  team[:colors]
end

def team_names
  names = []
  game_hash.each do |team, team_data|
    names << team_data[:team_name]
  end
  names
end

def player_numbers(team_name)
  team = find_team(team_name)
  nums = []
  team[:players].each do |player_name, data|
    nums << data[:number]
  end
  nums.sort
end

def player_stats(name)
  player = find_player(name)
  player
end

def biggest_shoe_player
  biggest_shoe_size = -1
  biggest_player = nil
  game_hash.each do |team, team_data|
    team_data[:players].each do |player_name, data|
      if data[:shoe] > biggest_shoe_size
        biggest_shoe_size = data[:shoe]
        biggest_player = team_data[:players][player_name]
        #binding.pry
      end
    end
  end
biggest_player
end

#biggest_shoe_player

def big_shoe_rebounds
  biggest_player = biggest_shoe_player
  #binding.pry
  biggest_player[:rebounds]
end

#big_shoe_rebounds