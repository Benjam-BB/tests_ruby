def echo (string)
    return string
end

def shout (string)
    string.upcase!
    return string 
end

def repeat (string, nb=2)
    return ([string] * nb).join(" ")
end

def start_of_word (letter, nb=1)
letter [0..nb-1] #only keep the number of letter starting from 0 to nb
end

def first_word (string)
string.split.first 
end

def titleize (string)
    string.split.each_with_index.map {|x, i|
        if x.size > 3 || i == 0
        x.capitalize
        else 
            x
        end}.join(' ') 
end
#each_with_index sépare les élements et les place dans un index




