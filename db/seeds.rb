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

p1 = Plant.create(name: "plant1", watering: "frequent", sunlight: "full sun", environment: "outside", notes: "good plant", image: "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_money-tree_small_bryant_black.jpg?v=1673504761", user_id: 6)
p2 = Plant.create(name: "plant2", watering: "semi-frequent", sunlight: "partial sun", environment: "inside", notes: "bad plant", image: "", user_id: 5)
p3 = Plant.create(name: "plant3", watering: "frequent", sunlight: "full sun", environment: "outside", notes: "good plant", image: "", user_id: 2)
p4 = Plant.create(name: "plant4", watering: "semi-frequent", sunlight: "partial sun", environment: "inside", notes: "bad plant", image: "", user_id: 6)
p5 = Plant.create(name: "plant5", watering: "frequent", sunlight: "full sun", environment: "outside", notes: "good plant", image: "", user_id: 2)
p6 = Plant.create(name: "plant6", watering: "semi-frequent", sunlight: "partial sun", environment: "inside", notes: "bad plant", image: "", user_id: 3)
p7 = Plant.create(name: "plant7", watering: "frequent", sunlight: "full sun", environment: "outside", notes: "good plant", image: "", user_id: 1)
p8 = Plant.create(name: "plant8", watering: "semi-frequent", sunlight: "partial sun", environment: "inside", notes: "bad plant", image: "", user_id: 6)
p9 = Plant.create(name: "plant9", watering: "frequent", sunlight: "full sun", environment: "outside", notes: "good plant", image: "", user_id: 3)
p10 = Plant.create(name: "plant10", watering: "semi-frequent", sunlight: "partial sun", environment: "inside", notes: "bad plant", image: "", user_id: 1)


l1 = Listing.create(title: "Young serviceberrys", plant_name: "apple serviceberry", description: "yada yada yada", city: "San Diego", state: "CA", zipcode: 91976, image: "https://www.farmersalmanac.com/wp-content/uploads/2020/11/easy-houseplants-945x630.jpg", plant_id: 7, user_id: 5)
l2 = Listing.create(title: "Healthy Juneberry bush", plant_name: "juneberry", description: "yada yada yada", city: "Denver", state: "CO", zipcode: 29485, image: "https://platthillnursery.com/wp-content/uploads/2021/03/platt-hill-best-tropical-patio-houseplant-maranta-houseplant-prayer-plant-1080x600.jpg", plant_id: 6, user_id: 2)
l3 = Listing.create(title: "Good plants", plant_name: "Nantucket serviceberry", description: "yada yada yada", city: "Broomfield", state: "CO", zipcode: 39484, image: "https://images.everydayhealth.com/images/houseplants-that-are-good-for-your-health-04-snake-plant-1440x810.jpg", plant_id: 9, user_id: 2)
l4 = Listing.create(title: "Moving so free plants", plant_name: "false indigo", description: "yada yada yada", city: "Logan", state: "UT", zipcode: 48376, image: "https://www.farmersalmanac.com/wp-content/uploads/2020/11/easy-houseplants-945x630.jpg", plant_id: 5, user_id: 1)
l5 = Listing.create(title: "Too many blue stars", plant_name: "blue star", description: "yada yada yada", city: "Scottsdale", state: "AZ", zipcode: 23847, image: "https://platthillnursery.com/wp-content/uploads/2021/03/platt-hill-best-tropical-patio-houseplant-maranta-houseplant-prayer-plant-1080x600.jpg", plant_id: 10, user_id: 2)
l6 = Listing.create(title: "Extra full moon maples", plant_name: "full moon maple", description: "yada yada yada", city: "Lodi", state: "CA", zipcode: 23986, image: "https://images.everydayhealth.com/images/houseplants-that-are-good-for-your-health-04-snake-plant-1440x810.jpg", plant_id: 9, user_id: 4)
l7 = Listing.create(title: "Extra Japanese maples", plant_name: "Japanese maple", description: "yada yada yada", city: "Durango", state: "CO", zipcode: 38576, image: "https://www.farmersalmanac.com/wp-content/uploads/2020/11/easy-houseplants-945x630.jpg", plant_id: 2, user_id: 2)
l8 = Listing.create(title: "Free red maple", plant_name: "red maple", description: "yada yada yada", city: "Salt Lake City", state: "UT", zipcode: 28847, image: "https://platthillnursery.com/wp-content/uploads/2021/03/platt-hill-best-tropical-patio-houseplant-maranta-houseplant-prayer-plant-1080x600.jpg", plant_id: 3, user_id: 3)
l9 = Listing.create(title: "ISO home for sugar maple", plant_name: "sugar maple", description: "yada yada yada", city: "San Jose", state: "CA", zipcode: 34823, image: "https://images.everydayhealth.com/images/houseplants-that-are-good-for-your-health-04-snake-plant-1440x810.jpg", plant_id: 1, user_id: 1)
l10 = Listing.create(title: "Save my amur maple", plant_name: "Amur maple", description: "yada yada yada", city: "Paradise", state: "AZ", zipcode: 48277, image: "https://www.farmersalmanac.com/wp-content/uploads/2020/11/easy-houseplants-945x630.jpg", plant_id: 4, user_id: 2)
l11 = Listing.create(title: "test", plant_name: "test", description: "test", city: "test", state: "CO", zipcode: 48177, image: "https://platthillnursery.com/wp-content/uploads/2021/03/platt-hill-best-tropical-patio-houseplant-maranta-houseplant-prayer-plant-1080x600.jpg", plant_id: 4, user_id: 6)

f1 = Friendship.create(sender_id: 1, receiver_id: 4, status: "pending")
f2 = Friendship.create(sender_id: 3, receiver_id: 5, status: "accepted")
f3 = Friendship.create(sender_id: 4, receiver_id: 6, status: "rejected")


puts "✅ Done seeding!"