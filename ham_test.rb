require "minitest"
require "minitest/autorun"
require 'pry'
require "./ham.rb"

class HamTest < Minitest::Test

  def test_it_can_return_soda_softball
   ham = Ham.new() 
   assert_equal ham.find_combo(2.05), ["1 items", "soda"]  
  end

  def test_when_given_first_receipt_it_returns_chips_chips_soda
   skip
   ham = Ham.new() 
   assert_equal ham.find_combo(4.85), ["3 items", "chips", "chips", "soda"]  
  end
end
