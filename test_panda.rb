require 'minitest/autorun'
require_relative 'panda.rb'

class Testpandafunctions < Minitest::Test
	def test_class_returns_name
	animal = Panda.new("Atlanta")
	assert_equal("Atlanta",animal.name)
	end
    def test_class_returns_sound
    	animal = Panda.new("Ken")
    	assert_equal("roar",animal.sound)
    end
    def test_class_returns_action
    	animal = Panda.new("Ashcorp")
    	assert_equal("sleep",animal.action)
    	assert_equal("Ashcorp",animal.name)
    	assert_equal("roar",animal.sound)
    end
    def test_class_returns_char_length
    	animal = Panda.new("Atlanta")
    	assert_equal(7,animal.name_count)
    end
    def test_class_returns_if_letter_included_in_animal_name
    	animal = Panda.new("Atlanta")
    	letter = "A"
    	assert_equal(true,animal.correct_letter?(letter))
    end
    def test_class_returns_if_letter_not_included_in_animal_name
    	animal = Panda.new("Atlanta")
    	letter = "B"
    	assert_equal(false,animal.correct_letter?(letter))
    end
    def test_class_returns_seven_asterisks
    	animal = Panda.new("Atlanta")
    	assert_equal(["*","*","*","*","*","*","*"],animal.asterisks)
    end
    def test_class_user_guess_is_pushed_into_guess_array
    	animal = Panda.new("Gatton")
    	letter = "h"
    	assert_equal(["h"],animal.update_guessed(letter))
    end
    def test_class_two_user_guess_is_pushed_into_guess_array
    	animal = Panda.new("Gatton")
    	animal.guessed = ["j", "o", "s"]
    	letter = "r"
    	assert_equal(["j", "o", "s", "r"],animal.update_guessed(letter))
    end
    def test_class_if_guess_already_in_array_returns_false
    	animal = Panda.new("Gatton")
    	animal.guessed = ["p", "l", "d"]
    	letter = "b"
    	assert_equal(false,animal.verify_guessed(letter))
    end
end