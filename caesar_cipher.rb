def caesar_cipher(message, key)
  newMessage = ""
  message.each_char { |c|
    if c.ord.between?("A".ord, "Z".ord)
      newMessage += ((c.ord - "A".ord + key)%26 + "A".ord).chr
    elsif c.ord.between?("a".ord, "z".ord)
      newMessage += ((c.ord - "a".ord + key)%26 + "a".ord).chr
    else
      newMessage +=c
    end
  }
  newMessage
end

puts caesar_cipher("What a string!", 5)