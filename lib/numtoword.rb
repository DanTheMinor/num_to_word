class Float
  define_method(:numwords) do
    one_nine = Hash.new()
    temp_array = []
    one_nine = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => "" }
    one_nine = { 1.0 => "one", 2.0 => "two", 3.0 => "three", 4.0 => "four", 5.0 => "five", 6.0 => "six", 7.0 => "seven", 8.0 => "eight", 9.0 => "nine", 0.0 => "" }
    ten_eleven = { 10.0 => "ten", 11.0 => "eleven", 12.0 => "twelve", 13.0 => "thirteen", 14.0 => "fourteen", 15.0 => "fifteen", 16.0 => "sixteen", 17.0 => "seventeen", 18.0 => "eighteen", 19.0 => "nineteen" }
    twenty_ninety = { 1 => "ten", 2 => "twenty", 3 => "thirty", 4 => "fourty", 5=> "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}


    if self.>(999).&(self.<=(1000000))
      string_num = self.to_s
      digsnum = string_num.length().-2
      num_array = []
      num_array = string_num.split("")
      num_array.pop()
      num_array.pop()
      if digsnum.==(4)
        temp_array.push(one_nine.fetch(num_array.at(0).to_i+0.0))
        #one_nine.fetch not working
  
      end

    end

    if self.>(0).&(self.<(10))
      one_nine.fetch(self)
    elsif self.>=(10).&(self.<(20))
      ten_eleven.fetch(self)
    elsif self.>(19).&(self.<=(99))
      secdig = (self./(10)).floor()
      firdig = self.-(secdig.*(10))
      temp_array.push(twenty_ninety.fetch(secdig))
      temp_array.push(one_nine.fetch(firdig))
      temp_array.join(" ")
    elsif self.>(99).&(self.<=(999))
      thirdig = (self./(100)).floor()
      #gets the third digit
      secdig = self.-(thirdig.*100)
      #gets the first and second digit
      secdig = (secdig./10).floor()
      firdig = self.-(((100.*thirdig).+(10.*secdig)))
      temp_array.push(one_nine.fetch(thirdig.+(0.0)))
      temp_array.push("hundred")
      temp_array.push(twenty_ninety.fetch(secdig))
      temp_array.push(one_nine.fetch(firdig))
      temp_array.join(" ")



    end
  end
end
