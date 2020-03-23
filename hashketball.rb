# Write your code here!
require 'pry'
def game_hash
game_hash = {:home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => 
[{:player_name =>"Alan Anderson", :number => 0, :shoe => 16, :points => 22, :rebounds => 12, :assists => 12, :steals => 3, :blocks => 1, :slam_dunks => 1 },

{:player_name =>"Reggie Evans", :number => 30, :shoe => 14, :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks => 7 },

{:player_name =>"Brook Lopez", :number => 11, :shoe => 17, :points => 17, :rebounds => 19, :assists => 10, :steals => 3, :blocks => 1, :slam_dunks => 15 },

{:player_name =>"Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6, :steals => 3, :blocks => 8, :slam_dunks => 5 },

{:player_name =>"Jason Terry", :number => 31, :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks => 1 }] }, 

:away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => 
[{:player_name =>"Jeff Adrien", :number => 4, :shoe => 18, :points => 10, :rebounds => 1, :assists => 1, :steals => 2, :blocks => 7, :slam_dunks => 2 },

{:player_name =>"Bismack Biyombo", :number => 0, :shoe => 16, :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks => 10 },

{:player_name =>"DeSagna Diop", :number => 2, :shoe => 14, :points => 24, :rebounds => 12, :assists => 12, :steals => 4, :blocks => 5, :slam_dunks => 5 },

{:player_name =>"Ben Gordon", :number => 8, :shoe => 15, :points => 33, :rebounds => 3, :assists => 2, :steals => 1, :blocks => 1, :slam_dunks => 0 },

{:player_name =>"Kemba Walker", :number => 33, :shoe => 15, :points => 6, :rebounds => 12, :assists => 12, :steals => 7, :blocks => 5, :slam_dunks => 12 }]
}}
end

def num_points_scored(player_name)
  game_hash.each do |team_loc, team_info|
    team_info[:players].each do |player|
        if player[:player_name] == player_name
          return player[:points]
        end
      end
    end
  end





def shoe_size(player_name)
 game_hash.each do |team_loc, team_info|
    team_info[:players].each do |player|
        if player[:player_name] == player_name
          return player[:shoe]
        end
      end
    end
  end

def team_colors(team_name)
  game_hash.each do |team_loc, team_info|
    if team_info[:team_name] == team_name
      return team_info[:colors]
    end
  end
end

def team_names
  team_names_array = []
  game_hash.each do |team_loc, team_info|
   team_names_array << team_info[:team_name]
  end
  team_names_array
end

def player_numbers(team_name)
  player_numbers = []
  game_hash.each do |team_loc, team_info|
    if team_info[:team_name] == team_name
      team_info[:players].each do |player|
      player_numbers << player[:number]
  end 
end
end
player_numbers
end

def player_stats(player_name)
  game_hash.each do |team_loc, team_info| 
    team_info[:players].each do |player|
        if player[:player_name] == player_name
           player.delete(:player_name)
          return player
      end
    end
  end
end

def big_shoe_rebounds
  big_shoe = 0 
  rebounds = 0
  game_hash.each do |team_loc, team_info| 
    team_info[:players].each do |player|
     if player[:shoe] > big_shoe 
       big_shoe = player[:shoe]
       rebounds = player[:rebounds]
    end
  end
end
return rebounds
end


def most_points_scored
  most_points = 0
  player_name = 0
  game_hash.each do |team_loc, team_info| 
    team_info[:players].each do |player|
      if player[:points] > most_points
        most_points = player[:points]  
        player_name = player[:player_name] 
      end
    end
  end
  player_name
end

def winning_team
  home_team_total = 0 
    
   game_hash[:home].each do |attributes, team_info|

if attributes == :players
     home_team_total += team_info.sum {|player| player[:points]}
   end
 end
   
  away_team_total = 0
   game_hash[:away].each do |attributes, team_info|
     if attributes == :players
      away_team_total += team_info.sum{|player| player[:points]}
  end
end
       
if home_team_total > away_team_total 
return "Brooklyn Nets"
else
return "Charlotte Hornets"
end
end 






def player_with_the_longest_name
  def player_with_longest_name
  longest = ''
  longest_length = 0
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      name_length = player[:player_name].length
      longest, longest_length = player[:player_name], name_length if name_length > longest_length
    end
  end
  return longest
end
  # name = ''
  # binding.pry
  # longest_name = 0
  
  # game_hash.each do |team_loc, team_info|
  #   team_info[:players].each do |player|
  #     name = player[:player_name]
  #       name_length = name.length
  #       if name_length > longest_name
  #         return name
  #     end
  #   end
  # end
end 






