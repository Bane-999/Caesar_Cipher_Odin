def caesar_cipher(string, shift)
    dcase_arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n",
                 "o","p","q","r","s","t","u","v","w","x","y","z"]
    mod_dcase_arr = dcase_arr.map {|el| el.ord}
    mod_ucase_arr = dcase_arr.map {|el| el.upcase.ord} 
    new_letter = nil

    sentence_arr = string.split("") 
    
    final = sentence_arr.map do |ltr|        
        
        if (mod_dcase_arr.include?(ltr.ord) || mod_ucase_arr.include?(ltr.ord))

            if (ltr.ord >=65 && ltr.ord <= 90)  # UPCASE
                mod_ucase_arr.each_with_index do |num, index|
                    if (num == ltr.ord)
                        if((index + shift) > 26)
                            new_letter = mod_ucase_arr[index + shift - 26].chr
                        else
                            new_letter = mod_ucase_arr[index + shift].chr
                        end
                        
                    end
                end
            end
            
            if (ltr.ord >=97 && ltr.ord <= 122)  # DOWNCASE
                mod_dcase_arr.each_with_index do |num, index|
                    if (num == ltr.ord)
                        if((index + shift) > 26)
                            new_letter = mod_dcase_arr[index + shift - 26].chr
                        else
                            new_letter = mod_dcase_arr[index + shift].chr
                        end
                        
                    end
                end
            end 
            new_letter

        else
            ltr
        end
    end
    
    final.join()
        
end

p caesar_cipher("What a string!", 5)
#"Bmfy f xywnsl!"
