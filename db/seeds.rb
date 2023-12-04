cities_array = ["paris","romaiville","drancy","nancy","bondy"]

cities_array.each do |city|
  City.create(name: city)
end

users_name_array = ["alfred", "jorge", "jean", "marc", "mary", "samantha"]

users_name_array.each do |user|
    User.create(email: "#{user}@gmail.com", description: "Yo soy quandro pera mi tu", phone_number: 545444554)
end

boolean_array = [true,false]

6.times do |v|
  Apartment.create(
    bed_number: rand(2..5), 
    price_per_night: rand(10..60), 
    description: "Tu passa senor hombre", 
    wifi: boolean_array.sample, 
    user_id: v,
    city: City.find_by(name: cities_array.sample)  
  )
end