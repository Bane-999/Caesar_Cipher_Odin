require "./ccipher.rb"

describe "Caesar Cipher Project" do
    it "returns string shifted by 5" do 
        expect(caesar_cipher("what",5)).to eql("bmfy")
    end

    it "returns string shifted by 5 with Upcase" do 
        expect(caesar_cipher("What",5)).to eql("Bmfy")
    end

    it "function returns to 'a' after 'z'" do
        expect(caesar_cipher("z", 1)).to eql("a")
    end

    it "returns string shifted by other that 5" do
        expect(caesar_cipher("abc",3)).to eql("def")
    end

    it "returns string shifted by 5 with symbols and spaces" do 
        expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
end