require "pry"

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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |attribute, value|
    if attribute == :winter
      value.values.each do |element|
        element << supply
      end
    end
    attribute
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |attribute, value|
    if attribute == :spring
      value.values.each do |element|
        element << supply
      end
    end
    attribute
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |hash_season, hash_holiday|
    if hash_season == season
      holiday_hash[hash_season][holiday_name] = supply_array
    end
    holiday_hash
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supply_used = {}
  holiday_hash.collect do |seasons, holidays|
    holidays.values if seasons == :winter
  end.flatten.compact
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  def format_string(string)
    string.to_s.split("_").collect { |word|
      word.capitalize!
    }.join(" ")
  end

  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |holiday, supply|
      puts "  #{str_holiday = format_string(holiday)}: #{supply.join(", ")}"
    end

    #{holiday.values.join(", ")}"
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end
