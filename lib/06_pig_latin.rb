def translate2(string) #methode qui a traduire un mot

    vowel = ["a","e","i","o","u","y"] #on définit les voyelles

        if vowel.include?(string[0])  #si la voyelle arrive en première position
            return string + "ay"
        elsif string[0..1] == "qu"
            return string[2..-1] + string[0..1] + "ay" #pour le cas à part du qu
        elsif string[1..2] == "qu"
            return string[3..-1] + string[0..2] + "ay" #pour la cas à part du qu
        else
            vp = first_vowel_index(string)
            return string[vp..-1] + string[0..(vp-1)] + "ay" #pour tous les autres cas 
         end
end

def first_vowel(string) #trouve la position d'une voyelle
    string.match(/a|e|i|o|u|y/)
end
  
def first_vowel_index(string) #envoi la position (index) de la voyelle
    string.index(first_vowel(string).to_s)
end

def translate(string) #fait tourner le cas où il y a plusieurs mots
    string2= string.split()
    a=string2.map { |n| n=translate2(n) }
    a.join(" ")
end

puts translate2 ("banana")
puts translate2 ("eat pig")
