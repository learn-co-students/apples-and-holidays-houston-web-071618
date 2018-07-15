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
  
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |hash,value|
   value << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # thought process: add season, add holiday_name to season, add supply_array to that holiday_name
  # 
  holiday_hash.each do |key,value|
    if(key == season)
      holiday_hash[key].merge!({holiday_name => supply_array})
    end 
    
    #puts holiday_hash.to_s
  end
  
  
  # remember to return the updated hash
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  returnArray = []
  holiday_hash.each do |hash,value|
    if(hash == :winter)                 #WINTER IS COMING!!
      value.each do |key,value|         #ITERATE THROUGH WINTER SUPPLY ARRAYS
        value.each do |item|            #ITERATE THROUGH INVIDUAL SUPPLY ARRAY ELEMENTS
          returnArray << item           #ADD THAT SHIT TO A LIST!!
        end 
      end
    end
  end
    returnArray                         #RETURN THE HELL OUT OF THAT!!!!
end
#============================================= WORK HERE
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  itemList = ""
  holiday_hash.each do |season, holiday|
   itemList << "#{season.to_s.capitalize}: \n"          #should return something like "Winter:"
   holiday.each do |pointer, itemArray|
     itemList << "  #{pointer.to_s.capitalize}:" 
     itemArray.each_with_index do |items, index|
      if index < itemArray.length-1
       itemList << "#{items}, "
      else
       itemList << "#{items}\n"
      end
     end
   end
  end
   puts itemList
end
#============================================= THIS WORKS IN THE OUTPUT BUT STILL DRAWS AN ERROR WITH SPEC
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  returnArray = []
  holiday_hash.each do |season, holiday|
    holiday.each do |pointer,items|
      if items.include?("BBQ")
        returnArray << pointer
      end
    end
  end
  returnArray
end







