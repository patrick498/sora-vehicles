require "open-uri"

clean = false
users = false
vehicles = false
images = false
bookings = false
reviews = true

if clean
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
end

if users
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
end

if vehicles
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
end


if images
  puts "Attaching images...\n"

  images_links = {Phantom: {images: ["https://res.cloudinary.com/unix-center/image/upload/c_limit,dpr_3.0,f_auto,fl_progressive,g_center,h_240,q_auto:good,w_385/nxntdtbsu9htndt172ha.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4ayUNxLizJA232ZjnPZQSLo3BsAGiOAHRHA&s",
  "https://hips.hearstapps.com/hmg-prod/images/2022-rolls-royce-phantom-mmp-1-1634759496.jpg?crop=0.944xw:0.794xh;0.0417xw,0.110xh&resize=2048:*",
  "https://static0.carbuzzimages.com/wordpress/wp-content/uploads/2024/03/1079524-11.jpg",
  "https://www.motorshow.me/uploadImages/ExtImages/images1/Rolls-RoycePhantomSyntopia(3)-embargoto06March13.00GMT-638138015115530221.jpg"]},
  "911 Turbo S": {images: ["https://static.wixstatic.com/media/f2b0f7_809e67c0ca5a467aa759d7458cafc5fa~mv2.jpeg/v1/fill/w_768,h_511,al_c,lg_1,q_85,enc_avif,quality_auto/991%20turbo%20fleet%20report%20(9).jpeg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0wqn4CMb1kTRxlUZ6DU7M2Q4eWdX2U2PLeg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQGasIPooaEhIOMKvKytejrM3Tx__L2XZYHQ&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyrFazxPI_bz_d51gstL5asT4FCr9NpgMB4g&s", "https://stimg.cardekho.com/images/carexteriorimages/630x420/Porsche/911/10997/Porsche-911-Turbo-S/1717681627351/front-left-side-47.jpg"]},
  "Aventador SVJ": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSryY2e0iU8N5kxz6bIsqp8lXYcxLDU77BlFA&s","https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/model_detail/aventador/svj/2021/03_19/aventador_svj_s1_m.jpg","https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/vdat/submodels/lamborghini_aventador_lamborghini-aventador-svj-coupe_2020-1581369555432.jpg?fill=18:11&resize=640:*", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzFd0Cbmzwd_JieRwlXjQVs8bVuZMapBU70g&s", "https://www.carscoops.com/wp-content/uploads/2018/08/f016be85-lamborghini-aventador-svj-.jpg"]},
  LaFerrari: {images: ["https://cdn.ferrari.com/cms/network/media/img/resize/5ddb97392cdb32285a799dfa-laferrari-2013-share?width=1080",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXX7IccZTEWlt07-gqraxy9tmf-Q8BvqKNwg&s",
  "https://www.amalgamcollection.com/cdn/shop/products/M5712-422-FerrariLaFerrari1.8Scale-Front3.4_grande.jpg?v=1628764043",
  "https://di-uploads-pod16.dealerinspire.com/continentalferrari/uploads/2018/05/Ferrari-LaFerrari-2.jpeg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThlaarEyLGbeYwumQd2z60XbNhHO6X43cF3A&s",
  "https://cdn.ferrari.com/cms/dws/media/img/resize/6284d0ee2e6df5002960a6ae?width=1080"]},
  G700: {images: ["https://flightplan.forecastinternational.com/wp-content/uploads/2023/09/G700-2.20230905-1024x683.jpg","https://marubeni-gulf.jp/lib/cmn_img/lineup/g700/img_products01.jpg","https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2019/10/931/523/002-Gulfstream-G700.jpg?ve=1&tl=1", "https://hautejets.com/wp-content/uploads/2024/09/elderly-couple-enjoying-gulfstream-g700.jpg", "https://www.ainonline.com/cdn-cgi/image/width=1200,format=webp,quality=95/https://backend.ainonline.com/sites/default/files/styles/fpsc_1200x630/public/gulfstream_g700_ebace2022_5dwm7247.jpg?h=cc766518&itok=-TE7JtL8"]},
  "Pershing 140": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF9GTaPqQYTqJBGPZ_12B2a9KlQYc38_3j1w&s","https://www.boatshopping.com.br/wp-content/uploads/2016/09/Pershing140Project.jpg", "https://www.barchemagazine.com/wp-content/uploads/2021/03/Pershing_140-night-view-1.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVonqgyFRe6oNZoHYZfRfIMVDb34zYda-Jvg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyb6E_7BZkDc64TgMNVhbUIrNtdJZcdRCalg&s"]},
  "Predator 108": {images: ["https://yachtharbour.com/static/uploads/scale_6105_6d05f.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxMYmnbfH_kzWn3yua-2-u7ml418GCM-iEA&s", "https://yachtharbour.com/static/uploads/scale_6105_873ea.jpg", "https://image.yachtbuyer.com/w990/h756/qh/ca/ow-1/kaf7e8735/model/photo/1010867.jpg", "https://media.boatbookings.com/media//6/9/60765-6910brochure15.jpg?auto=webp&format=pjpg&bg-color=033359&fit=crop&canvas=744%2C496"]},
  "Continental GT": {images: ["https://royalenfieldfortaleza.com.br/wp-content/uploads/2021/02/Destaque_Continental_24-apex-grey.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbE_VDv4CCszHiQPlYI6Ty8y9Ug4k3J3Iwwg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-csyOLVFIBEOdQJVNEWqyfRHY2uH8F9npsQ&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ94gjDDqHomsODQAiu7mPWQ6OMV-ylwgn6-w&s"]},
  "Grande 35 Metri": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD9iuz81lsNUGC_teUVjYEcrGRFEPAh6hekg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6jn1PLF4DQHL3swv8y7r51hKYWbTH5pv07A&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVL88V9o-r80piuPC70rHYNIt4NmHN7kqQQQ&s", "https://cdn.boatinternational.com/files/2023/10/fb86c5f0-6f4e-11ee-b191-2d63c5475b4c-Azimut-Grande-35-Metri.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREQEWM1Wd__Q3YWgvdSfx6GNAK_ULMfOWjrg&s"]},
  Lumiere: {images: ["https://res.cloudinary.com/bluewater/image/fetch/w_auto,h_1200,c_lfill,g_auto,f_auto/https://www.bluewateryachting.com/_uploads/website/charter/yachts/659/20220314105125000000_7386.jpg", "https://res.cloudinary.com/bluewater/image/fetch/w_auto,h_1200,c_lfill,g_auto,f_auto/https://www.bluewateryachting.com/_uploads/website/charter/yachts/659/20220314103643000000_33.jpg", "https://res.cloudinary.com/bluewater/image/fetch/w_auto,h_1200,c_lfill,g_auto,f_auto/https://www.bluewateryachting.com/_uploads/website/charter/yachts/659/20220314104046000000_5717.jpg", "https://ruyachts.com/images/benetti/custom/fb244-lumiere-ii/exterior/th/th-benetti-custom-fb244-lumiere-ii-exterior-17.jpeg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUOJMSnFwHKYbLuCo7GtBQ-cN-Vk9eOHC4Yg&s"]},
  Y72: {images: ["https://www.princessyachts-japan.com/models/y_class/72/image/y72.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBile3gL7FmK6y_RkKApoiNp895Oj8jLZZag&s","https://www.princess.co.uk/wp-content/uploads/2020/06/84a614356169b63b21c7c7e48af4c8a009c24749.webp","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBYwE-UgkhOUXF61903JpqB7M9_J2sNyRXeg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6J_T6vzaHxd1gpzDlnCH592iWCg13jrRYgw&s"]},
  "CVO Road Glide": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ5MMAKT_vig98RMFdKMe7phcI0fB3BZ7glw&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4P63lN3ErDKsvu2y9mj-_CR0ylfRGokDAqA&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoyBvsS6R3D5DIXr3GRFTrajj4fA0Y0DFQRA&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTO3mYZTDOgQ7IQ063g_HLi__N5vGZAFlSXA&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXSKB7Xi3_IOjpNq1qM7B0kLoTk8le0CZEoQ&s"]},
  "Global 7500": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfP_ysCbwEv5Yv-PiO_oUjncXCqlKccW9t7A&s", "https://cdn-bphpm.nitrocdn.com/ZhYHzWIWwhFaPjJWeezSiHAhLWwyIoId/assets/images/optimized/rev-7da2c75/accessjetgroup.com/wp-content/uploads/2019/10/Bombardier-Global-7500-1-1000x500.jpg","https://d3ukgu32nhw07o.cloudfront.net/article/ogp_file5c9c3896d6c96.jpg", "https://static.wixstatic.com/media/087237_b3bc3439e6154bcba15c1c23238d31f7~mv2.jpg/v1/fill/w_654,h_970,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/Global%207500%20and%20Global%208000%20Principal%20Suite%20with%20Bed.jpg", "https://d1a2ot8agkqe8w.cloudfront.net/web/2019/10/global-7500-biggin_78990.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfW-cQxcDNClPgZ1dQHnQ2cAC2yRElETzQ0w&s"]},
  "Panigale V4": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyREAciJcNQX0UB9ukp64vrFrvHZgY444iYA&s","https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20240726120057_D1.jpg&w=700&c=1", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFqsetCInWMUtmS-iYDbH7sbppKOFlsF-5Xg&s","https://cdn.dealerspike.com/imglib/v1/800x600/imglib/Assets/Inventory/83/32/83327400-DCAE-4538-87A5-33A55A761C65.jpg", "https://cdn-fastly.motorcycle.com/media/2024/07/25/17001/s-2025-ducati-panigale-v4-s-gallery.jpg?size=720x845&nocrop=1"]},
  "Citation Longitude": {images: ["https://embarqueoficial.com.br/wp-content/uploads/2024/07/cessna-citation-longitude-voo-fretamento-voo-aeronave.jpg", "https://www.flyingmag.com/wp-content/uploads/2021/08/httpswww.flyingmag.comsitesflyingmag.comfilesimport2012sitesallfiles_images201205long4.jpg?auto=webp&optimize=high&quality=70&width=1440", "https://resources.globalair.com/specs/images/Citation_Longitude_i6.jpg?w=650&h=430&mode=max", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjASrE1R-RDLopNA_WChdrGaxmlzsQwW9f_q3sA1VbfWWWBN-7EEoqPiHFqJatsFt71PE&usqp=CAU", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqY-BTUvxhHYAp0hBsABrqOdIsr499xmUCtA&s"]},
  "Lineage 1000E": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxOXT4as_BcxpnVUFG-6EL5Xi9PDUBbH4qiA&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtYysdT_SzvjF5XgfO0gnDZnlJGzG8avl9Zw&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaVWBMpZf008dlwDRllrhlYOLwqNDnM83G6Q&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrp3ky_exQP-Cw-USI8IGymKy_rlaC3bNjoA&s", "https://magellanjets.com/wp-content/uploads/2023/10/Lineage-1000E.png.webp"]},
  "Chieftain Elite": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5ul9QTo9eGmjBd6Q7xmSG7_zRTbjhtA6KQk-7XirPKFANYPowzxJ1qo7wKhssdK0Leu8&usqp=CAU", "https://images.timesdrive.in/photo/msid-151056526,thumbsize-634473,width-560,height-250,false/151056526.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoR1YRFFaR1tqbshU9_xtmpZXx-lzwmUx5vA&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuRvnbnM3YWhUG0nfxokf4VBlmDIpWrREk5Q&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbaKxdWVsV6sguO72S_6OqFcuTxBqSbTk9Sw&s"]},
  "K1600 Grand America": {images: ["https://cdn-fastly.motorcycle.com/media/2023/02/23/8881813/first-look-2018-bmw-k1600-grand-america.jpg?size=720x845&nocrop=1", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJrYzvfJZ_bHzNOWN-0I9umySWmyMcuHskvA&s", "https://www.k1600forum.com/attachments/bmw-k1600-grand-america-5-copy-jpg.144218/", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMIkgjW6xjFXlgsVFU4LTzaikOChQCF3X-2g&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStGxMGgjgii7WFE_-DJqde1_bZaj69S9ggrA&s"]},
  "Rocket 3 R": {images: ["https://media.triumphmotorcycles.co.uk/image/upload/f_auto/q_auto:eco/sitecoremedialibrary/media-library/images/motorcycles/rocket%203/carousel/rocket3-my20-500x325-image11.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2jvWeVDUz3BkVR4Fzn6xVAJNPbSJAHks5sQ&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGTV7kFJrGEtDy9aWX13XmwK0O4_YHkqh5jg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiVJdGwT4g0rTUShVH2Uv5nS357VdCAbg-fg&s"]},
  Speedtail: {images: ["https://robbreport.com/wp-content/uploads/2022/04/speedtail04.jpg", "https://cdn.dealeraccelerate.com/bagauction/10/1612/79333/790x1024/2020-mclaren-speedtail", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeTNAY6DCV-VlfyoCAXXCvFBk5dL4Yec_Ysg&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsXs-bwXo967FN_GKBPACL4Lh818eU-xlMXw&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ20mQPxln7ZbwghcKex4ULzzP6voAr-Qh7ZA&s"]},
  "Falcon 8X": {images: ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZJW6REwPosd5kkso0P2AgYL9IAm9YdoXFZg&s", "https://images.dassault-aviation.com/w_980,f_auto,q_auto,g_center,dpr_auto,c_fill/wp-auto-upload/2/files/2022/03/DA00017252_S.jpg", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK4dcCfnCv1CBFzYoUD0B_iNni_a2YX5PwHA&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ZgoICOIksNPTtI4g70__UHPBiLytTPqq_A&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAN8XwNHA-B-iJZFkeOvibm3W-VYMfisut9w&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDaXjEa8SapezzQhT-rhdtlLS_zP1nlBc7tQ&s"]}
  }

  vehicles = Vehicle.all
  vehicles.each do |vehicle|
    puts "Attaching for : #{vehicle.model}"
    vehicle_links = images_links[vehicle.model.to_sym]
    vehicle_links[:images].each do |image_url|
      p image_url
      vehicle.images.attach(
        io: URI.open(image_url),
        filename: File.basename(URI.parse(image_url).path),
        content_type: 'image/jpeg') # Adjust the content type if needed
        rescue OpenURI::HTTPError => e
        puts "❌ Failed to attach image: #{e.message}"
        rescue Errno::ENOENT, URI::InvalidURIError, Net::OpenTimeout => e
        puts "❌ Image URL is invalid or unreachable: #{e.message}"
    end
  end
  puts "Images attached..."
end

if bookings
  puts "Adding the bookings..."
  vehicles = Vehicle.all.to_a
  booking_status = Booking.statuses.keys
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
        status: booking_status.sample,
        vehicle: vehicles.sample,
        user: users.sample
      )
      last_day = start_date_offset + last_day_offset
    end
  end
  puts "Added #{Booking.count} bookings\n"
  puts "############"
end

if users
  puts "Adding blank user for demo"
  User.create!(
    email: "json@sora.com",
    password: "patrick12345",
    first_name: "JSON",
    last_name: "Whaterever"
  )
  puts "User added..."
end



if reviews

  vehicle_reviews = {
    car: {
      4 => [
        "Great value for money.",
        "Smooth ride, decent mileage.",
        "Comfortable, easy to drive.",
        "Good car for daily use.",
        "Reliable and stylish.",
        "Nice handling, good features.",
        "Spacious and fuel-efficient.",
        "Affordable and practical.",
        "Perfect for commuting.",
        "Solid performance overall."
      ],
      5 => [
        "Amazing driving experience!",
        "Perfect car, I love it!",
        "Incredible comfort and style.",
        "Best car I’ve owned!",
        "Excellent performance and features.",
        "Highly recommend this car.",
        "Top quality, very reliable.",
        "Great car, very efficient.",
        "Super smooth and quiet.",
        "Love the design and features."
      ]
    },
    airplane: {
      4 => [
        "Comfortable and fast flight.",
        "Great service and punctual.",
        "Smooth flight, good food.",
        "Very clean and modern.",
        "Quick and convenient travel.",
        "Professional crew, good experience.",
        "Good flight with no issues.",
        "Nice amenities and seating.",
        "Pleasant flight overall.",
        "On-time and smooth journey."
      ],
      5 => [
        "Best flight experience ever!",
        "Amazing service and comfort.",
        "Luxury in the skies!",
        "Great entertainment and food.",
        "Super comfortable and relaxing.",
        "Exceptional service, will fly again.",
        "Incredible experience, highly recommend.",
        "Fantastic flight, excellent staff.",
        "Smoothest flight I’ve had!",
        "Perfect flight, no complaints."
      ]
    },
    boat: {
      4 => [
        "Nice boat, smooth ride.",
        "Comfortable and spacious boat.",
        "Great for a weekend trip.",
        "Fun and relaxing experience.",
        "Good boat for fishing.",
        "Easy to handle and maneuver.",
        "Great view from the deck.",
        "Nice amenities onboard.",
        "Reliable and fast boat.",
        "Perfect for a day trip."
      ],
      5 => [
        "Perfect boat for the family!",
        "Luxury on the water.",
        "Super fun and fast ride.",
        "Amazing boat, loved it!",
        "Highly recommend this boat.",
        "Wonderful experience on the water.",
        "Incredible boat, smooth sailing.",
        "Very well-maintained and luxurious.",
        "The best boat I’ve been on!",
        "Absolutely fantastic boat experience."
      ]
    },
    motorcycle: {
      4 => [
        "Smooth ride, great power.",
        "Nice design and handling.",
        "Comfortable for long rides.",
        "Fast and fun to ride.",
        "Great bike for commuting.",
        "Good speed and stability.",
        "Reliable and powerful engine.",
        "Fun and easy to control.",
        "Affordable and efficient motorcycle.",
        "Comfortable and stylish bike."
      ],
      5 => [
        "Awesome bike, highly recommend!",
        "Amazing ride, great handling.",
        "Best motorcycle I’ve owned.",
        "Incredible performance and power.",
        "Super smooth and fast ride.",
        "Perfect bike for long trips.",
        "Fantastic handling and comfort.",
        "Super fun and powerful bike.",
        "Love this motorcycle, so smooth.",
        "Perfect balance of speed and comfort."
      ]
    }
  }

  vehicles = Vehicle.all
  vehicles.each do |vehicle|
    (1..rand(4..10)).each do
      rating = rand(4..5)
      Review.create!(
        vehicle: vehicle,
        rating: rating,
        content: vehicle_reviews[vehicle.vehicle_type.to_sym][rating].sample
      )
    end
  end
end

puts "Users: #{User.count}"
puts "Vehicles: #{Vehicle.count}"
puts "Bookings: #{Booking.count}"
puts "Reviews: #{Review.count}"
