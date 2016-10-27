class Person < ApplicationRecord
	has_many :bully, class_name: "Bullying", foreign_key: "bully_id"
	has_many :bulled, class_name: "Bullying", foreign_key: "bulled_id"
	has_attached_file :photo, styles: {medium: "400x400>", thumb: "100x100>"}
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/


	#Metodo que se encarga de crear todos los chalequeos (chalequeos de el y para el) cuando se crea una persona
  def create_bullyings
    @people = Person.all
    #crea todos los chalequeos para el
    @people.each do |person|
      if person.id != self.id
        @bullying = Bullying.new
        @bullying.bulled_id = person.id
        @bullying.bully_id = self.id
        @bullying.save
      end
    end
    #crea todos los chalequeos que hace el
    @people.each do |person|
      if person.id != self.id
        @bullying = Bullying.new
        @bullying.bulled_id = self.id
        @bullying.bully_id = person.id
        @bullying.save
      end
    end
  end

end
