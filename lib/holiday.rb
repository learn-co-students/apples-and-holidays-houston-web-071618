require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  #holiday_supplies[:summer][:fourth_of_july][1]
  
  holiday_hash.each do |season, holiday|
    holiday.each do |name, festivities|
      if name == :fourth_of_july
        second_supply = festivities[1]
        return second_supply
      end
    end
  end
  
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, holiday|
    holiday.each do |name, festivities|
      if name == :christmas  || name == :new_years
        festivities << supply
      end
    end
  end
  
 holiday_hash
 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season, holiday|
    holiday.each do |name, festivities|
      if name == :memorial_day
        festivities << supply
      end
    end
  end
 holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash.each do |season_name, holiday|
    if season_name == season
      holiday_hash[season].store(holiday_name, supply_array) 
    end
  end
 holiday_hash
  
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

supply_array = []

  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, supplies|
        supply_array.concat(supplies)
      end #do
    end #if
  end #do
supply_array

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    season_string = season.to_s
    season_string.capitalize!
    puts "#{season_string}:"
      holiday.each do |name, supplies|
        name_string = name.to_s
        if name_string.include? "_" 
          name_array = name_string.split('_')
          ar_length = name_array.length
          if ar_length > 1
            name_array.each do |word|
               word.capitalize!
            end
            name_string2 = name_array.join(" ")
            name_string3 = name_string2 
          end
        else
          name_string.capitalize!
          name_string3 = name_string
        end
        #Print holiday: supplies here for each holiday
        supply_string = supplies.join(", ")
        puts "  #{name_string3}: #{supply_string}"
      end
  end


end #  

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  supply_array = []

  holiday_hash.each do |season, holiday|
      holiday.each do |name, supplies|
        if supplies.include? "BBQ"
          supply_array << name
        end
      end
  end
  supply_array

end







