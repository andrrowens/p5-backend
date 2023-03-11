puts "Deleting old data..." 

User.destroy_all   
Plant.destroy_all
Listing.destroy_all 
Friendship.destroy_all

puts "Creating seed data..." 

u1 = User.create(email: "andrew1@gmail.com", username: "andrew1", password: "password", city: "San Diego", state: "CA", zipcode: 91576)
u2 = User.create(email: "samm@gmail.com", username: "sammy1", password: "password", city: "Dallas", state: "TX", zipcode: 42746)
u3 = User.create(email: "jack1@gmail.com", username: "jack1", password: "password", city: "Durango", state: "CO", zipcode: 23375)
u4 = User.create(email: "kate1@gmail.com", username: "kate1", password: "password", city: "Herndon", state: "VA", zipcode: 28475)
u5 = User.create(email: "michelle1@gmail.com", username: "michelle1", password: "password", city: "Houston", state: "TX", zipcode: 21475)
u6 = User.create(email: "mike1@gmail.com", username: "mike1", password: "password", city: "Nashville", state: "TN", zipcode: 38475)




# p1 = Plant.create(common_name: "plant1", scientific_name: "scientific1", cycle: "perennial", watering: "frequent", sunlight: "full sun", image: "")
# p2 = Plant.create(common_name: "plant2", scientific_name: "scientific2", cycle: "annual", watering: "infrequent", sunlight: "limited sun", image: "")
# p3 = Plant.create(common_name: "plant3", scientific_name: "scientific3", cycle: "annual", watering: "frequent", sunlight: "full sun", image: "")
# p4 = Plant.create(common_name: "plant4", scientific_name: "scientific4", cycle: "perennial", watering: "semi-frequent", sunlight: "limited sun", image: "")
# p5 = Plant.create(common_name: "plant5", scientific_name: "scientific5", cycle: "annual", watering: "infrequent", sunlight: "full sun", image: "")
# p6 = Plant.create(common_name: "plant6", scientific_name: "scientific6", cycle: "annual", watering: "infrequent", sunlight: "partial sun", image: "")
# p7 = Plant.create(common_name: "plant7", scientific_name: "scientific7", cycle: "perennial", watering: "frequent", sunlight: "full sun", image: "")
# p8 = Plant.create(common_name: "plant8", scientific_name: "scientific8", cycle: "annual", watering: "semi-frequent", sunlight: "limited sun", image: "")
# p9 = Plant.create(common_name: "plant9", scientific_name: "scientific9", cycle: "perennial", watering: "frequent", sunlight: "partial sun", image: "")
# p10 = Plant.create(common_name: "plant10", scientific_name: "scientific10", cycle: "annual", watering: "frequent", sunlight: "full sun", image: "")

p1 = Plant.create(
    name: "Sago Palm", 
    watering: "Semi-Frequent", 
    sunlight: "Full Sun", 
    environment: "Inside/Outside", 
    notes: "The sago palm (Cycas revoluta) is a popular houseplant known for its feathery foliage and ease of care. In fact, this is a great plant for beginners and makes an interesting addition to nearly any room. It can even be grown outdoors. While the name might imply that it is a palm, this plant is actually considered a cycad, one of the oldest groups of plants dating back to prehistoric times — hence the plants hardiness.", 
    image: "https://hgtvhome.sndimg.com/content/dam/images/hgtv/products/2020/4/6/4/rx_amazon_king-sago-palm-tree.jpeg.rend.hgtvcom.1280.1280.suffix/1586203834663.jpeg", 
    user_id: 6)
p2 = Plant.create(
    name: "Christmas Cactus", 
    watering: "Semi-Frequent", 
    sunlight: "Partial Sun", 
    environment: "Inside", 
    notes: "The Christmas cactus (Schlumbergera x buckleyi) is a popular houseplant which blooms indoors in the winter, so its popular at holiday time and makes a great gift, too. Unlike regular cacti, however, this is not a plant from a dry, hot, desert location. Rather, this is a succulent native to tropical rainforests, where they grow on tree branches and soak up the high humidity, dappled sunlight, and warm temperatures.", 
    image: "https://publish.purewow.net/wp-content/uploads/sites/2/2022/10/Holiday-Cactus-Hero.jpg", 
    user_id: 5)
p3 = Plant.create(
    name: "Norfolk Pine", 
    watering: "Semi-Frequent", 
    sunlight: "Full/Partial Sun", 
    environment: "Inside/Outside", 
    notes: "Norfolk Island pine is not an actual pine tree but rather a relative of the monkey puzzle tree. It is often cultivated as a landscape tree in subtropical climates in North America (USDA zones 10 to 11) and grown indoors elsewhere. Growing to great heights, it has a straight trunk and pleasingly symmetrical branches covered with short, inward-curving needles. A Norfolk Island pine can grow big—up to 200 feet tall outdoors. Grown indoors, it gets 3 to 8 feet tall or may even be trained as a bonsai or miniature tree.", 
    image: "https://redsquareflowers.com/wp-content/uploads/2020/11/Norfolk-Iseland-Pine-Madison-WI.png", 
    user_id: 2)
p4 = Plant.create(
    name: "Barrel Cactus", 
    watering: "Minimal", 
    sunlight: "Full Sun", 
    environment: "Inside/Outside", 
    notes: "Barrel cacti are the classic desert denizens of lore. There are a number of barrel cactus varieties within two genus types, the Echinocactus and the Ferrocactus. The Echinocactus has a fuzzy crown of fine spines, while the Ferrocactus are ferociously thorned. Each one can be grown as a houseplant or in less common situations, the arid garden and are attractive additions to a succulent display. Growing barrel cacti requires a sunny location, well-drained potting soil, and minimal watering.", 
    image: "https://i.ebayimg.com/images/g/7BEAAOSwB9hZ335M/s-l500.jpg", 
    user_id: 6)
p5 = Plant.create(
    name: "Snake Plant", 
    watering: "Minimal", 
    sunlight: "Full Sun", 
    environment: "Inside/Outside", 
    notes: "Native to southern Africa, snake plants are well adapted to conditions similar to those in southern regions of the United States. Because of this, they may be grown outdoors for part of all of the year in USDA zones 8 and warmer. However, they spread by sending out underground runners and may become invasive, so treat snake plants like you would bamboo; plant it only in contained areas or pots. Too much water and freezing temperatures are two of the very few things that can really affect this plant in a significant way. Soggy soil will cause root rot and extended exposure to cold temperatures can damage the foliage.", 
    image: "https://www.plants.com/images/157646mgp_20220623-1656007523729.jpg", 
    user_id: 2)
p6 = Plant.create(
    name: "Corn Plant", 
    watering: "Semi-Frequent", 
    sunlight: "Full Sun/Partial Sun", 
    environment: "Inside", 
    notes: "The corn plant (Dracaena fragrans) is a tropical African evergreen tree popular in Europe as an indoor plant since the mid-1800s—and in the U.S. since the early 20th century. They grow fairly slowly, from thick canes or stems that produce long, narrow leaves like stalks of corn, growing upward. This growth habit also makes them look a lot like palm trees, which is why theyre sometimes called “false palms.” They make good houseplants because they are tall and narrow, typically only reaching around 4- to 6-feet tall in containers.", 
    image: "https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Dracaena_Corn_FGT_2_675x.jpg?v=1612444294", 
    user_id: 3)
p7 = Plant.create(
    name: "Feather Cactus", 
    watering: "Minimal", 
    sunlight: "Full Sun", 
    environment: "Inside/Outside", 
    notes: "Mammillaria plumosa (mam-mil-AR-ee-uh plum-OH-suh) is a member of the plant family Cactaceae (kak-TAY-see-eye) hailing from Nuevo Leon, Mexico. The plant is commonly referred to as Feather Cactus because of its soft, downy appearance. In its native environment, Mammillaria plumosa is a perennial. If planted outdoors away from its home desert, these cacti are best used as annuals. Kept indoors, or brought indoors during cold weather, they will live for years.", 
    image: "https://i.etsystatic.com/16895778/r/il/b1b651/2510949217/il_570xN.2510949217_6zx7.jpg", 
    user_id: 1)
p8 = Plant.create(
    name: "Pothos", 
    watering: "Semi-Frequent", 
    sunlight: "Full Sun/Partial Sun", 
    environment: "Inside", 
    notes: "Pothos is arguably one of the easiest houseplants to grow, even if you're someone who forgets to water your plants often enough. This trailing vine, native to the Solomon Islands in the South Pacific, has pointed, heart-shaped green leaves that are sometimes variegated with white, yellow, or pale green striations. Pothos is a good indoor plant year-round and will grow quickly, often adding between 12 to 18 inches of length in a month. Be aware that pothos plants are toxic to pets.", 
    image: "https://www.thespruce.com/thmb/0QHhioSY7xteAdwlANsMQKLevOM=/3000x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-make-pothos-fuller-5324082-hero-57b72aa5638a4653a938b6130d555dac.jpg", 
    user_id: 6)
p9 = Plant.create(
    name: "Baby Blue Spruce", 
    watering: "Semi-Frequent", 
    sunlight: "Full Sun/Partial Sun", 
    environment: "Outside", 
    notes: "The Baby Blue spruce reaches a height of 15 to 20 feet, and it usually spreads out to 10 feet. If you allow this spruce to grow naturally, it develops into a pyramid shape. The Baby Blue spruces branches are horizontal and reach down to the ground. Thick silvery-blue needles cover the branches, and many of these stiff needles measure up to 1 inch. While the Baby Blue spruce does not flower, it produces cones in the late summer and early fall. The cones of mature trees are often gray-brown in color. However, younger trees feature red arils at the tips of the branches.", 
    image: "https://cdn.shopify.com/s/files/1/2045/8185/products/10675470_grande.jpg?v=1603468431", 
    user_id: 3)
p10 = Plant.create(
    name: "San Pedro Cactus", 
    watering: "Semi-Frequent/Minimal", 
    sunlight: "Full Sun", 
    environment: "Inside/Outside", 
    notes: "A plant prized by the indigenous people of the Andes mountains for thousands of years, San Pedro Cactus has recently gained popularity in Southwestern-themed gardens in the US. Charming and cheerful-looking while growing tall and thin, San Pedro draws a sense of awe once it reaches a towering height. Exquisite blooms. Large, showy flowers are quite dramatic and fill the air with perfume. Finally, this plant is very easy to take care of in warm and temperate climates as well as indoors given enough light. San Pedro is from the Andes at high altitudes and is used to a wide variance in temperature and rainfall", 
    image: "https://llifle.com/photos/pht_10089_l.jpg", 
    user_id: 1)




l1 = Listing.create(
    title: "Free Snake Plant", 
    plant_name: "Snake Plant", 
    description: "I've had this snakeplant for several years and it has been thriving but I'm moving so need to find it a new home. This is an easy to care for plant with minimal water requirements. Let me know if you're in the area and can pick it up!", 
    city: "Denver", 
    state: "CO", 
    zipcode: 80220, 
    image: "https://i.imgur.com/v3t4nGS.jpg", 
    plant_id: 7, 
    user_id: 5)
l2 = Listing.create(
    title: "Need good home for dying houseplant", 
    plant_name: "Pothos", 
    description: "I think this plant is a pothos but I'm not sure. It seems to get the right amount of sunlight but isn't doing well and I'd like to see if someone else can potentially save it. I could be overwatering.", 
    city: "San Diego", 
    state: "CA", 
    zipcode: 91911, 
    image: "https://salisburygreenhouse.com/wp-content/uploads/Header-_0154_7-Proven-Techniques-for-Debugging-Your-Houseplants-feature.jpg", 
    plant_id: 6, 
    user_id: 2)
l3 = Listing.create(
    title: "Cactus Clippings", 
    plant_name: "Christmas Cactus", 
    description: "Offering free clipping from my Christmas Cactus. It's getting too big for the space. I have other cacti and succulents as well so send me a friend request if you'd like to see what's available.", 
    city: "Miami", 
    state: "FL", 
    zipcode: 33101, 
    image: "https://www.almanac.com/sites/default/files/styles/large/public/image_nodes/thanksgiving-cactus_nadezhdanesterova-ss.jpg?itok=WOcuIN36", 
    plant_id: 9, 
    user_id: 2)
l4 = Listing.create(
    title: "Free Norfolk Pine", 
    plant_name: "Norfolk Pine", 
    description: "Norfolk pines are beautiful trees but this one has grown too big for my space. Looking for a good home.", 
    city: "Logan", 
    state: "UT", 
    zipcode: 48376, 
    image: "http://cdn.shopify.com/s/files/1/0076/8229/3830/products/image_39975326-a79e-4a5c-bbe5-887920f23a76.jpg?v=1618815279", 
    plant_id: 5, 
    user_id: 1)
l5 = Listing.create(
    title: "Free Trees", 
    plant_name: "Baby Blue Spruce", 
    description: "I own a landscaping company and have several Baby Blues left over from a large job we did. About 2.5' - 3' tall. First come, first serve.", 
    city: "Scottsdale", 
    state: "AZ", 
    zipcode: 23847, 
    image: "https://easybigtrees.co.nz/wp-content/uploads/2021/02/products-1970670826.jpg", 
    plant_id: 10, 
    user_id: 2)
l6 = Listing.create(
    title: "Help save my barrel cactus.", 
    plant_name: "Barrel Cactus", 
    description: "This beautiful barrel cactus has brought my wife and I years of joy but now that we have a baby we cannot have spikey things around the house. Looking for a good home.", 
    city: "Lodi", 
    state: "CA", 
    zipcode: 95240, 
    image: "https://cdn.shopify.com/s/files/1/1111/4656/products/Echinocactus-Grusonii-Golden-Barrel-cactus-Cactus-Large-Exact_f64b8ac0-06fb-462b-8e4a-fe745b59b3e1_800x.jpg?v=1628878218", 
    plant_id: 9, 
    user_id: 4)
l7 = Listing.create(
    title: "Free House Plant to Good Home", 
    plant_name: "Corn Plant", 
    description: "I'm moving to a new apartment and need to get rid of my large corn plant. About 4' tall. Anyone interested?", 
    city: "Durango", 
    state: "CO", 
    zipcode: 82134, 
    image: "https://cdn11.bigcommerce.com/s-zw4pw/images/stencil/1280x1280/products/606/1769/RM_405_Large_Dracaena_Mass_Cane_Corn_Plant_Tree__63920.1593798968.JPG?c=2", 
    plant_id: 2, 
    user_id: 2)
l8 = Listing.create(
    title: "Anyone want a Sago Palm?", 
    plant_name: "Sago Palm", 
    description: "We just got a new puppy who is getting into everything and apparently these are very poisonous to dogs so we need to get rid of it. Going on vacation soon so this will end up in the trash if no one can take it.", 
    city: "Salt Lake City", 
    state: "UT", 
    zipcode: 28847, 
    image: "https://www.outdoorwarehousesupply.com/wp-content/uploads/2021/02/sago-palm-30-705x705-1.jpg", 
    plant_id: 3, 
    user_id: 3)
l9 = Listing.create(
    title: "Tiny Cactus ISO good home", 
    plant_name: "Feather Cactus", 
    description: "Anyone want my cactus? I always forget it's there and barely water it (it doesn't need much). Comes with pot.", 
    city: "San Jose", 
    state: "CA", 
    zipcode: 94823, 
    image: "https://mygardenlife.com/wp-content/uploads/2023/01/2019_04_lead_cactus-and-pot_img_2394.jpg", 
    plant_id: 1, 
    user_id: 1)
l10 = Listing.create(
    title: "Need to find new home for my Cactus", 
    plant_name: "San Pedro Cactus", 
    description: "I'm moving soon and this beautiful cactus would be very hard to ship across the country so I'm looking to find it a new home. It's about 10 years old and I'm very attached to it so it will be hard to let go.", 
    city: "Colorado Springs", 
    state: "CO", 
    zipcode: 81223, 
    image: "https://cdn.shopify.com/s/files/1/0538/9362/8069/products/image_4d6ed729-54c5-46dd-b44a-b9350da2d512_1024x1024@2x.jpg?v=1652209228", 
    plant_id: 4, 
    user_id: 2)


f1 = Friendship.create(sender_id: 1, receiver_id: 4, status: "pending")
f2 = Friendship.create(sender_id: 3, receiver_id: 5, status: "accepted")
f3 = Friendship.create(sender_id: 4, receiver_id: 6, status: "rejected")


puts "✅ Done seeding!"