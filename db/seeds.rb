if Section.count == 0
  %w(All Breakfast Lunch Dinner Drinks).each do |name|
    Section.create!(name: name)
  end
end

sections = Section.all
puts "FoodItem.all.count #{FoodItem.all.count} "
puts "sections.length =  #{sections.length} "

if FoodItem.all.count < 10
  sections.each do |section|
    10.times do |i|
      name = Faker::Food.ingredient
      puts "generate food [#{i}] #{name} "
      food_item = FoodItem.create({
        name: name,
        section: section,
        description: Faker::Lorem.paragraph(5),
        price: Faker::Number.between(50, 200) * 1000,
        url: Faker::Avatar.image
      })
      food_item.save!
    end
  end
end
