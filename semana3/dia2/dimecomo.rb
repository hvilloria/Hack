
x = Proc.new do |x| 
  x.each { |x| puts "#{x} got #{rand(0..12)}"} 
end

x.call ["Juan", "Daniel", "Pedro", "Carlos"] 

