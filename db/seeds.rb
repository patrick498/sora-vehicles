puts "Cleaning the db...\n"
puts "Destroying Users\n"
User.destroy_all
puts "Users: #{User.count}"

puts "Destroying Vehicle\n"
Vehicle.destroy_all
puts "Vehicle: #{Vehicle.count}"

puts "Destroying Bookings\n"
Booking.destroy_all
puts "Bookings: #{Booking.count}"


# Create Users
User.create!(
  email: "axel.bailleres@sora.com",
  password: "axel12345",
  first_name: "Axel",
  last_name: "Bailleres"
)
User.create!(
  email: "yuki.ide@sora.com",
  password: "yuki12345",
  first_name: "Yuki",
  last_name: "Ide"
)
User.create!(
  email: "yu.sekiguchi@sora.com",
  password: "sekiguchi12345",
  first_name: "Yu",
  last_name: "Sekiguchi"
)
User.create!(
  email: "patrick.pailhes@sora.com",
  password: "patrick12345",
  first_name: "Patrick",
  last_name: "Pailhes"
)


# Create Vehicles



# Create Bookings




puts "Users: #{User.count}"
puts "Vehicles: #{Vehicle.count}"
puts "Bookings: #{Booking.count}"
