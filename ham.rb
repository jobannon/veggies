=begin
I've been to a restaurant to order some food, but I've forgotten what I ordered in the past. I only remember how much money I spent.
From the following menu, and list of receipt values, determine what I could have ordered.
=end
require "pry"

class Ham 
  def initialize
    @menu = {
      'veggie sandwich' => 6.85,
      'extra veggies' => 2.20,
      'chicken sandwich' => 7.85,
      'extra chicken' => 3.20,
      'cheese' => 1.25,
      'chips' => 1.40,
      'nachos' => 3.45,
      'soda' => 2.05,
    }

  end

  def find_combo(total_to_hit, menu_item = nil)

    @menu.reduce({}) do |acc, (key, value)|
      if value == total_to_hit
        return ["1 items, #{key}"]
      else
        puts "sad"
      end
    end
    

  end

end

# The Receipts:
#
# receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]
#
# will need to loop once we get this plane airborne
# receipts.each do |receipt|
# end
=begin
Constraints:
- you must use 100% of the receipt value, we don't want any money left over
- you can order any quantity of any menu item
- none of the receipt values are "tricks", they all have answers
The Challenge:
Find the first combination of food that adds up to the receipt total, print out only one combination for that receipt, and move on to the next receipt.
The output format is up to you, but here are some examples:
4.85:
3 items, extra veggies, chips, cheese
13.75:
3 tems, {'veggie sandwich': 1, 'nachos': 2}
Extension:
Refactor your first algorithm to examine many matching combinations for each receipt to find the combination with the fewest total number of items purchased.
Each receipt, except the $75 receipt, has only one best answer.
Example:
4.85 receipt has three possible combinations:
- best: nachos, chips (2 total items)
- extra veggies, chips, cheese (3 total times)
- chips, chips, soda (3 total items)
=end
