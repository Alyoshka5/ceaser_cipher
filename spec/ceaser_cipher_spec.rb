require './lib/script'

describe "#ceasar_cipher" do
    it "returns cipher of one word" do
        expect(ceasar_cipher("hello", 5)).to eql("mjqqt")
    end

    it "returns cipher of multiple words" do
        expect(ceasar_cipher("this is a cipher", 8)).to eql("bpqa qa i kqxpmz")
    end

    it "returns cipher without affecting letter case" do
        expect(ceasar_cipher("uP AnD dOWn", 10)).to eql("eZ KxN nYGx")
    end

    it "returns cipher without changing symbols" do
        expect(ceasar_cipher("free-for-all!!!", 5)).to eql("kwjj-ktw-fqq!!!")
    end
    
    it "returns cipher with key higher than 26" do
        expect(ceasar_cipher("Anyone home?", 32)).to eql("Gteutk nusk?")
    end
    
    it "returns cipher with key bellow 0" do
        expect(ceasar_cipher("Anyone home?", -4)).to eql("Wjukja dkia?")
    end
end