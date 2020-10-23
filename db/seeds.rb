require 'faker'

10.times do
	user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
		description: Faker::Quote.yoda, email: Faker::Internet.email, age: Faker::Number.within(range: 18..75), city: City.all.sample)
end

10.times do
	city = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

20.times do
	gossip = Gossip.create(title: Faker::BossaNova.song, content: Faker::Lorem.paragraph, user:User.all.sample)	
end

10.times do
	tag = Tag.create(title: Faker::Kpop.girl_groups)
end

5.times do
	private_message = PrivateMessage.create(content: Faker::Quotes::Chiquito.joke, sender: User.all.sample)
end

puts "et voilà tout est parsemé!"
