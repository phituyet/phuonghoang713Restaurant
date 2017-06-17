if Section.count == 0
  %w(breakfast lunch dinner drinks).each do |name|
    Section.create!(name: name)
  end
end
