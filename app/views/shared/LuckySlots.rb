
def winnings(slot1, slot2, slot3)

	fruit = { "bar" => 1000, "diamonds" => 1500, "cherry" => 600, "sevens" => 700, "grapes" => 800, "bananas" => 300 }
	if (slot1 == slot2) && (slot1 == slot3)
		fruit[slot1] * 3
	elsif slot1 == "bar" || slot2 == "bar" || slot3 == "bar"
		puts "You got a bar, you lose!"
	elsif slot1 == slot2 || slot2 == slot3 || slot1 == slot3
		if slot1 == slot2 || slot1 == slot3
			fruit[slot1] * 2
		else
			fruit[slot2] * 2
		end
	else
		puts "YOU LOSE!!"
	end
end




slot_items = ["bar", "cherry", "sevens", "grapes", "bananas", "diamonds"]
@slot1 = slot_items.sample
@slot2 = slot_items.sample
@slot3 = slot_items.sample
puts @slot1 + " - " + @slot2 + " - " + @slot3

winnings(slot1, slot2, slot3)