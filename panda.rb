class Panda

	attr_accessor :name,:sound,:action,:guessed

	def initialize(animal_name)
		@name = animal_name
		@sound = "roar" 
		@action = "sleep"
		@guessed = []
	end
	def verify_guessed(choice)
		guessed.include?(choice)
	end
	def update_guessed(choice)
		guessed.push(choice)

	end
	def name_count
		name.length
	end
	def correct_letter?(letter)
	    name.include? (letter)
	end
	def asterisks
		Array.new(7,"*")
	end
end