def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    elsif [a,b,c].max == a
        return "a is bigger"
    elsif [a,b,c].max == b 
        return "b is bigger"
    else [a,b,c].max == c
        return "c is bigger"
    end
end

#puts who_is_bigger(8,14,nil)

def reverse_upcase_noLTA(string)
    string.reverse!.upcase!.delete ("LTA")
end

#puts reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")

def array_42 (array)
    if array.include? (42)
        return true
    else
        return false
    end
end

def magic_array (array)
    array.flatten.sort.map{|x| x*2 }.delete_if{|x| x % 3 == 0}.uniq
    #uniq keep onmy uniq numbers
    #flatten if differents arrays put all in the same
    #sort to sort
    #map lance une fonction derrière
    #d'abord chaque élément *2
    #on suprrime les multiples de 3 (modulo 3) 
end