x = [1,2,3]

x.reverse.each do |i|
    if i == 3
        puts "One, two."
    elsif i == 2
        puts "One, two, three, four, five."
    else 
        puts "¡Ánimo, Ánimo, Ánimo!"
    end
end
