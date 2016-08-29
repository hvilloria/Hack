class Human

    def name #getter
        @name
    end    

    def heigth
        @heigth
    end

    def weight
        @weight
    end

    def hobbie
        @hobbie
    end

    def name=(name) #setter
        @name = name
    end
    

    def heigth=(heigth)
        @heigth = heigth
    end


    def weight=(weight)
        @weight = weight
    end


    def hobbie=(like)
        @hobbie = like
    end


    

    def initialize (attr={})
        @name = attr[:name]
        @last_name = attr[:last_name]
        @age = attr[:age]
        @weight = attr[:weight]
        @hobbie = attr[:like]
        @height = attr[:height]
    end

    def get_name
        puts "what's your name?"
        @name = gets.chomp
        puts "nice #{name}, well it's time to know you"
        puts "how old are you?"
        @age = gets.chomp.to_i
        puts "ok ok.. and what's your last name?"
        @last_name = gets.chomp
        puts "what about your hobbie?"
        @hobbie = gets.chomp
        puts "oh.. it sound funny"
        puts "ok how much do you weight"
        @weight=gets.chomp.to_i
        puts "how tall are you?"
        @height = gets.chomp.to_i
    end

    def eat
        puts "ok #{@name}, you are satisfied and you gain a little of weight"
        @weight += 1
        give_me_my_weight
    end

    def give_me_my_weight
        puts "your weight: #{weight}"
    end

    def work_out
        puts "yes! you are thinking about your body, so fitness!"
        @weight -= 1
        give_me_my_weight
    end

    def grow_up
     @age += 2
     puts "well well, it seems you are taller!"
        if @age > 30 then
            puts "well you are not a child, take care but don't worry.. life is not to short! haha "
       end
    end
end


hosward = Human.new
hosward.get_name
hosward.eat
hosward.work_out
hosward.grow_up


=begin
 se realiza la convencion clasica de getters y settes para realizar la modificacion y obtencion de valores a usar
 a lo largo del codigo.
    
=end