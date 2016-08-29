

class Human

	attr_accessor :name,:last_name,:age,:weight,:like

	def initialize (attr={})
		@name = attr[:name]
		@last_name = attr[:last_name]
		@age = attr[:age]
		@weight = attr[:weight]
		@hobbie = attr[:like]
	end

	def get_name
		puts "what's your name?"
		@name = gets.chomp
		puts "nice #{@name}, well it's time to know you"
		puts "how old are you?"
		@age = gets.chomp.to_i
		puts "ok ok.. and what's your last name?"
		@last_name = gets.chomp
		puts "what about your hobbie?"
		@hobbie = gets.chomp
		puts "oh.. it sound funny"
		puts "ok how much do you weight"
		@weight = gets.chomp.to_i
		puts "how tall are you?"
		@height = gets.chomp.to_i


	end

	def eat
		puts "ok #{@name}, you are satisfied and you gain a little of weight"
		@weight = @weight + 1
		give_me_my_weight
	end

	def give_me_my_weight
		puts "your weight: #{@weight}"
	end

	def work_out
		puts "yes! you are thinking about your body, so fitness!"
		@weight -= 1
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



#programa de emulacion de un humano con metodos como comer, crecer peso y demas asi como su emulacion de comportamientos a traves de metodos