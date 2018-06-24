def get_first_name_of_season_winner(data, season)
  data[season].each do |cast|
    return cast["name"].split(" ")[0] if cast["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season|
    season[1].each do |profile, stat|
      return profile["name"] if profile["occupation"] == occupation 
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
