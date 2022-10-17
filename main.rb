def caesar_cipher(string, shift)
    decimals = []
    string.each_char do |x|

        # checking for uppercase
       if x.ord >= 65 && x.ord <= 90 
        value = x.ord + shift
        if value > 90
            decimals.push((value - 90) + 64)
        else
            decimals.push(value)
        end

        # checking for lowercase
       elsif x.ord >= 97 && x.ord <= 122
        value1 = x.ord + shift
        if value1 > 122
            decimals.push((value - 122) + 96)
        else
            decimals.push(value1)
        end

        #checking for a special character
       else
        decimals.push(x.ord)
       end
    end
    decimals.pack('c*')
end

caesar_cipher("What a string!", 5)