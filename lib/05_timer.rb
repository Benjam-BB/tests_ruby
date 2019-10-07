def time_string (duration)
    Time.at(duration).utc.strftime("%H:%M:%S") #formule de convertisseur de temps sur https://apidock.com/ruby/DateTime/strftime
end