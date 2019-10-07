def time_string (duration)
    Time.at(duration).utc.strftime("%H:%M:%S") #formule de convertisseur de temps sur https://apidock.com/ruby/DateTime/strftime
end
 #Time.at() considère valeur temporelle en secondes
  #utc rétabli le fuseau horaire à zero (sans ça ajoute +1h00 car fuseau Paris)
  #strftime() affiche le resultat au format HH:MM:SS