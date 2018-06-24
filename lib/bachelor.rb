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
  by_hometown = []
    data.each do |season|
      season[1].each do |contestant|
        if contestant["hometown"] == hometown
          by_hometown << contestant
      end
    end
  end
  return by_hometown.length
end

def get_occupation(data, hometown)
  occupation_by_hometown = []
  data.each do |season|
    season[1].each do |contestant|
      occupation_by_hometown << contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
  occupation_by_hometown.shift
end

def get_average_age_for_season(data, season)
  avg_age = 0
  data["#{season}"].map do |contestant|
    # binding.pry
    avg_age = avg_age + (contestant["age"].to_f)
  end
    avg_age = avg_age / data["#{season}"].count
    avg_age.round
end