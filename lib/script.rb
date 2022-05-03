def ceasar_cipher(text, key)
    text.split("").map do |c|
        c_value = c.ord
        if !((c_value >= 65 && c_value <= 90) || (c_value >= 97 && c_value <= 122))
            # return character if not alphabetic
            next c  # next returns c to map instead of to method (ceasar_cipher)
        end
        c_value += key
        if (c == c.upcase && c_value > 90) || (c == c.downcase && c_value > 122)
            c_value -= 26
        end
        c_value.chr
    end.join
end

puts ceasar_cipher("What a string!", 5)