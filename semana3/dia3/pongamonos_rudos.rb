class Human

  attr_accessor  :name , :last_name , :identification 

  @@what_we_are = "Human"

  def initialize (name,last_name,identification) #AQUI SE MODIFICO EL MODO EN QUE SE RECIBEN LOS PARAMETROS
    @name = name
    @last_name = last_name
    @identification = identification
  end

  def sayHello
    p "Hi, my name is: #{@name} #{@last_name}, and my DNI is #{@identification}"
  end

  def remake(name, last_name, identification) #AQUI SE MODIFICO EL MODO EN QUE SE RECIBEN LOS PARAMETROS
    @name = name
    @name = last_name
    @name = identification
  end

  def what_i_am
    p "I think we are #{@@what_we_are}'s" #variable de clase sin los @ respectivos
  end

  def now_we_are_monsters
    @@what_we_are = "Monster"
  end

  def self.back_to_normal
    @@what_we_are = "Human"
  end

  def self.what_are_we?
    p "#{@@what_we_are}" #variable de clase sin los @ respectivos
  end

end


Human.what_are_we?

x = Human.new("José" ,"Rodriguez" , "V-20802029") #mal envio de parametros!
y = Human.new("Daniel" ,"Corchea" ,"V-21313221") #mal envio de parametros!

x.sayHello
y.sayHello

x.remake("Roderick", "Marcano", "V-23423425") #mal envio de parametros!
y.remake("Juan", "Vitriago", "V-20312213")#mal envio de parametros!

x.sayHello
y.sayHello

x.what_i_am
y.what_i_am

x.now_we_are_monsters

x.what_i_am
y.what_i_am

Human.back_to_normal

x.what_i_am
y.what_i_am

