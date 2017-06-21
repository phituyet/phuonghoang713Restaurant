if Section.count == 0
  %w(All Breakfast Lunch Dinner Drinks).each do |name|
    Section.create!(name: name)
  end
end
