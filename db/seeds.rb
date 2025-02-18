require "open-uri"

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
puts "############"

puts "Adding the users...\n"
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
puts "Added #{User.count} users...\n"
puts "############"

# Create Vehicles
puts "Adding the vehicles...\n"
users = User.all.to_a
Vehicle.create!(
  vehicle_type: "car",
  brand: "Ferrari",
  model: "LaFerrari",
  description: "The Ferrari LaFerrari is a hybrid sports car combining exceptional speed and futuristic technology, designed for thrill-seekers and luxury enthusiasts.",
  location: "Monaco",
  price_day: 50000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "car",
  brand: "Lamborghini",
  model: "Aventador SVJ",
  description: "The Lamborghini Aventador SVJ boasts cutting-edge aerodynamics and unmatched performance, perfect for those who seek the ultimate driving experience.",
  location: "Los Angeles",
  price_day: 45000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "car",
  brand: "Porsche",
  model: "911 Turbo S",
  description: "Porsche's 911 Turbo S delivers precision engineering and blistering speed, an iconic symbol of high-performance luxury.",
  location: "Dubai",
  price_day: 40000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "car",
  brand: "Rolls-Royce",
  model: "Phantom",
  description: "The Rolls-Royce Phantom represents ultimate opulence, combining elegance with an incredibly smooth ride that redefines luxury travel.",
  location: "London",
  price_day: 60000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "car",
  brand: "Bentley",
  model: "Continental GT",
  description: "The Bentley Continental GT is a grand tourer with unrivaled luxury, delivering an experience of pure indulgence and dynamic performance.",
  location: "Paris",
  price_day: 50000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "boat",
  brand: "Sunseeker",
  model: "Predator 108",
  description: "The Sunseeker Predator 108 is a masterpiece of nautical engineering, offering stunning performance and luxurious amenities for ocean exploration.",
  location: "Monaco",
  price_day: 150000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "boat",
  brand: "Azimut",
  model: "Grande 35 Metri",
  description: "The Azimut Grande 35 Metri is a superyacht that exudes sophistication, featuring five-star luxury interiors and unparalleled views of the sea.",
  location: "Miami",
  price_day: 200000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "boat",
  brand: "Princess",
  model: "Y72",
  description: "The Princess Y72 is a luxurious flybridge yacht that combines graceful design with exceptional performance on the open waters.",
  location: "Ibiza",
  price_day: 120000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "boat",
  brand: "Benetti",
  model: "Lumiere",
  description: "Benetti Lumiere offers extraordinary luxury, providing lavish spaces, a serene atmosphere, and incredible service for its guests.",
  location: "St. Tropez",
  price_day: 250000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "boat",
  brand: "Ferretti",
  model: "Pershing 140",
  description: "The Pershing 140 is a high-performance superyacht with sleek lines, offering ultimate comfort and cutting-edge technology for an unforgettable experience.",
  location: "Cannes",
  price_day: 220000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "airplane",
  brand: "Gulfstream",
  model: "G700",
  description: "The Gulfstream G700 is the epitome of luxury in aviation, featuring spacious cabins, top-tier technology, and the ability to fly at supersonic speeds.",
  location: "New York",
  price_day: 500000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "airplane",
  brand: "Bombardier",
  model: "Global 7500",
  description: "The Bombardier Global 7500 redefines private travel with its ultra-long range, ultra-luxurious cabin, and superior performance for the most discerning passengers.",
  location: "Los Angeles",
  price_day: 600000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "airplane",
  brand: "Dassault",
  model: "Falcon 8X",
  description: "The Dassault Falcon 8X is a sophisticated private jet designed for comfort and speed, offering a seamless travel experience to any destination.",
  location: "Dubai",
  price_day: 550000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "airplane",
  brand: "Embraer",
  model: "Lineage 1000E",
  description: "The Embraer Lineage 1000E offers unmatched luxury and versatility, featuring an expansive cabin with customizable interiors for a personalized experience.",
  location: "Geneva",
  price_day: 450000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "airplane",
  brand: "Cessna",
  model: "Citation Longitude",
  description: "The Citation Longitude delivers unparalleled comfort and performance, providing smooth rides and top-tier amenities for business and leisure travel.",
  location: "London",
  price_day: 400000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "motorcycle",
  brand: "Ducati",
  model: "Panigale V4",
  description: "The Ducati Panigale V4 is a superbike that merges extreme performance with Italian craftsmanship, ideal for thrill-seekers and performance aficionados.",
  location: "Milan",
  price_day: 12000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "motorcycle",
  brand: "Harley-Davidson",
  model: "CVO Road Glide",
  description: "The Harley-Davidson CVO Road Glide offers unmatched luxury in a touring motorcycle, combining a powerful engine with exceptional comfort on long rides.",
  location: "Los Angeles",
  price_day: 10000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "motorcycle",
  brand: "BMW",
  model: "K1600 Grand America",
  description: "BMW's K1600 Grand America offers ultimate luxury touring with an inline-six engine, premium comfort features, and advanced technology for a smooth ride.",
  location: "Munich",
  price_day: 15000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "motorcycle",
  brand: "Indian Motorcycle",
  model: "Chieftain Elite",
  description: "The Indian Chieftain Elite combines vintage styling with modern performance, offering top-tier comfort and luxury on the open road.",
  location: "Chicago",
  price_day: 12000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "motorcycle",
  brand: "Triumph",
  model: "Rocket 3 R",
  description: "Triumph Rocket 3 R is an iconic motorcycle with a massive 2500cc engine, delivering power and luxury for the rider who craves exhilaration.",
  location: "London",
  price_day: 18000,
  user: users.sample
)

Vehicle.create!(
  vehicle_type: "car",
  brand: "McLaren",
  model: "Speedtail",
  description: "The McLaren Speedtail is a hypercar with futuristic design and performance, offering an unrivaled driving experience that pushes the limits of innovation.",
  location: "Monaco",
  price_day: 80000,
  user: users.sample
)
puts "Added #{Vehicle.count} vehicles\n"
puts "############"


puts "Attaching images...\n"
SEED_IMAGES_PATH = Rails.root.join("app/assets/images/seeds")
vehicles = Vehicle.all
vehicles.each do |vehicle|
  puts "Attaching for : #{vehicle.model}"
  vehicle_folder = SEED_IMAGES_PATH.join(vehicle[:model])
  if Dir.exist?(vehicle_folder)
    # Get all images inside the folder
    image_files = Dir.children(vehicle_folder).sort.map { |filename| vehicle_folder.join(filename) }

    image_files.each do |image_path|
      # Open the image file and attach it
      puts "Attaching #{image_path}...\n"
      File.open(image_path) do |file|
        vehicle.images.attach(io: file, filename: File.basename(image_path))
      end
    end
  else
    puts "Warning: No images found for #{vehicle[:model]} in #{vehicle_folder}"
  end
end
puts "Images attached..."

puts "Adding the bookings..."
vehicles = Vehicle.all.to_a
vehicles.each do |vehicle|
  owner_user = vehicle.user
  users = User.all.to_a
  users.delete(owner_user)
  last_day = 0
  (1..5).each do |num|
    start_date_offset = rand(1..10 + last_day)
    start_date = Date.today + start_date_offset
    last_day_offset = rand(1..7)
    end_date = start_date + last_day_offset
    total_price = (end_date - start_date) * vehicle.price_day
    Booking.create!(
      start_date: start_date,
      end_date: end_date,
      total_price: total_price,
      status: "pending",
      vehicle: vehicles.sample,
      user: users.sample
    )
    last_day = start_date_offset + last_day_offset
  end
end
puts "Added #{Booking.count} bookings\n"
puts "############"

puts "Users: #{User.count}"
puts "Vehicles: #{Vehicle.count}"
puts "Bookings: #{Booking.count}"
