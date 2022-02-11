def time_of_day(daylight)
  daylight ? puts("It's daytime!") : puts("It's nighttime")
end

time_of_day([true, false].sample)