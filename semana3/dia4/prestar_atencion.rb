
class Human 
  attr_accessor :name
  def initialize name
    @name = name
  end
end

class Child < Human	
  attr_accessor :toys
  def initialize name,toys
    super(name)
    @toys = toys
  end
end

x = Human.new "José"
y = Child.new "Juan", ["Metras", "Perinola"]

puts x.name
puts y.name

y.toys.each {|variable| puts variable}


=begin
el problema estaba en que heredaba de manera incorrecta, no es
human quien hereda del child, es el child quien hereda del human,
es decir es su clase padre.
=end

