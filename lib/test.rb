def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supply_used = {}
  holiday_hash.collect do |seasons, holidays|
    holidays.values if seasons == :winter
  end.flatten.compact
end

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"],
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"],
  },
  :fall => {
    :thanksgiving => ["Turkey"],
  },
  :spring => {
    :memorial_day => ["BBQ"],
  },
}

p all_winter_holiday_supplies(holiday_supplies)
