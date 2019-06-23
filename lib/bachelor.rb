
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestant|
    contestant.each do |locator|
      if locator["hometown"] == hometown
        counter +=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |index|
      if index["hometown"] == hometown
        return index["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  counter = 0
  age_counter = 0
  data[season].each do |actor|
    counter += 1
    age_counter += actor["age"].to_f
  end
  return (age_counter / counter).round
	
end