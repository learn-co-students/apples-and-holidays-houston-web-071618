require 'pry'
  
  holiday_supplies = {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash.each do | key, holiday |
    if key == :summer
      holiday.each do | holiday, decor |
        if holiday == :fourth_of_july
          return decor[1]
        end
      end
    end 
  end 
end
second_supply_for_fourth_of_july(holiday_supplies)

#2
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.collect do | key, holiday |
    if key == :winter
      holiday.each do | holiday, decor |
        decor << supply
      end  
    end  
  end
  holiday_hash
end
add_supply_to_winter_holidays(holiday_supplies, "Balloons")

#3
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.collect do | key, holiday|
  if key == :spring
    holiday.each do | holiday, decor |
      decor << supply
    end
  end  
end   
holiday_hash 
end
add_supply_to_memorial_day(holiday_supplies, "Grill, Table Cloth")

#4

# add to :fall => :columbus_day
season = :fall
holiday_name = :columbus_day
columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]
# add to :winter => :valentines_day
# season = :winter
# holiday_name = :valentines_day
# valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end
add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, columbus_day_supplies)

#   groceries.values.flatten.collect do |item|
#     item.capitalize
#   end  
# end  
# second_challenge

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  ans = []
holiday_hash.each do | key, holiday|
  if key == :winter
    holiday.collect do | holiday_name, decor|
      ans << decor
    end
  end  
end   
ans = ans.flatten
end
all_winter_holiday_supplies(holiday_supplies)

# iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

   # if holiday_name == "new_years" || holiday_name == "fourth_of_july" 
   #    holiday_name = holiday_name.split(%r{,\s*})

def all_supplies_in_holidays(holiday_hash)
  # ans = [] 
  key_str = ""
  hol_str = ""
  sup_str = ""
  holiday_hash.each do | key, holiday |
    key = key.to_s.capitalize
    key_str = "#{key}:"
    puts key_str 
    
    holiday.each do | holiday_name, supply |
      holiday_name = holiday_name.to_s.split("_")
      holiday_name.each { | word |
      word.capitalize! }
    # puts holiday_to_cap_each
      holiday_name = holiday_name.join(" ")
    # holiday_name = holiday_name.capitalize
    supply = supply.join(", ")
    # supply = supply.chomp(" ")
    sup_str = "  #{holiday_name}:"
    sup_str += " #{supply}"
    # supply_last = supply.pop
    # array.each do | item |

    # sup_str += "#{supply_last}"
    puts sup_str
    end  
end
end
all_supplies_in_holidays(holiday_supplies)


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
 ans = []
holiday_hash.each do | key, holiday|
    holiday.collect do | holiday_name, decor|
      if decor.include?("BBQ")
      ans << holiday_name
      end
    end
end   
ans = ans.flatten
end
all_holidays_with_bbq(holiday_supplies)


# holiday_supplies2 = ["Fireworks", "BBQ"]

# def all_holidays_with_bbq2(holiday_hash)
#   ans = []
#   holiday_hash.select do | item |
#     if item == "BBQ"
#     ans << item
#   end
#   end
# end
# all_holidays_with_bbq2(holiday_supplies2)
