require 'faker'

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
		description: Faker::Quote.yoda, email: Faker::Internet.email, age: Faker::Number.within(range: 18..75),)
end

10.times do
	city = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

20.times do
	gossip = Gossip.create(title: Faker::BossaNova.song, content: Faker::Lorem.paragraph, user:user)	
end

10.times do
	tag = Tag.create(title: Faker::Kpop.girl_groups)
end

5.times do
	private_message = private_message.create(content: Faker::Quotes::Chiquito.joke, user:sender, user:recipients)
end

puts "et voilà tout est parsemé!"
