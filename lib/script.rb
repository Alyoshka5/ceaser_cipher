def ceasar_cipher(text, key)
    text.split("").map do |c|
        c_value = c.ord
        # return character if not alphabetic
        if !((c_value >= 65 && c_value <= 90) || (c_value >= 97 && c_value <= 122))
            next c
        end

        c_value += key < 26 ? key : key % 26
        if (c == c.upcase && c_value > 90) || (c == c.downcase && c_value > 122)
            c_value -= 26
        elsif (c == c.upcase && c_value < 65) || (c == c.downcase && c_value < 97)
            c_value += 26
        end
        c_value.chr
    end.join
end

puts ceasar_cipher("Anyone home?", -4)