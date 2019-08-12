require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


##### ARIBNB
listing1 = Listing.new(name: "the flat", city: "madrid")
listing2 = Listing.new(name: "the long", city: "london")
listing3 = Listing.new(name: "the tall", city: "paris")
listing4 = Listing.new(name: "the sky", city: "rome")
listing5 = Listing.new(name: "the bright", city: "berlin")

guest1 = Guest.new(name: "joaquin")
guest2 = Guest.new(name: "george")
guest3 = Guest.new(name: "peter")
guest4 = Guest.new(name: "ron")
guest5 = Guest.new(name: "mike")
guest6 = Guest.new(name: "juan")
guest7 = Guest.new(name: "pablo")

trip1 = Trip.new(guest: guest1, listing: listing1, name: "trip1")
trip2 = Trip.new(guest: guest2, listing: listing2, name: "trip2")
trip3 = Trip.new(guest: guest3, listing: listing3, name: "trip3")
trip4 = Trip.new(guest: guest4, listing: listing4, name: "trip4")
trip5 = Trip.new(guest: guest5, listing: listing5, name: "trip5")
trip6 = Trip.new(guest: guest6, listing: listing4, name: "trip6")
trip7 = Trip.new(guest: guest7, listing: listing3, name: "trip7")
trip8 = Trip.new(guest: guest6, listing: listing2, name: "trip8")
trip9 = Trip.new(guest: guest5, listing: listing1, name: "trip9")
trip10= Trip.new(guest: guest4, listing: listing2, name: "trip10")
trip11 = Trip.new(guest: guest3, listing: listing4, name: "trip11")
trip12 = Trip.new(guest: guest2, listing: listing3, name: "trip12")
trip13 = Trip.new(guest: guest1, listing: listing2, name: "trip13")


##### BAKERY
bakery1 = Bakery.new(name: "bombom")
bakery2 = Bakery.new(name: "teatea")
bakery3 = Bakery.new(name: "chocochoco")

dessert1 = Dessert.new(name: "cake", bakery: bakery1)
dessert2 = Dessert.new(name:"flan", bakery: bakery2)
dessert3 = Dessert.new(name:"pudding", bakery: bakery2)
dessert4 = Dessert.new(name:"cookies", bakery: bakery3)
dessert5 = Dessert.new(name:"jelly", bakery: bakery3)
dessert6 = Dessert.new(name:"smoothie", bakery: bakery3)

ingredient1 = Ingredient.new(name: "sugar", dessert: dessert1, calories: 25)
ingredient2 = Ingredient.new(name: "brown sugar", dessert: dessert1, calories: 26)
ingredient3 = Ingredient.new(name: "eggs", dessert: dessert2, calories: 27)
ingredient4 = Ingredient.new(name: "strawberry", dessert: dessert2, calories: 28)
ingredient5 = Ingredient.new(name: "milk", dessert: dessert3, calories: 29)
ingredient6 = Ingredient.new(name: "flour", dessert: dessert3, calories: 35)
ingredient7 = Ingredient.new(name: "butter", dessert: dessert4, calories: 45)
ingredient8 = Ingredient.new(name: "cinamon", dessert: dessert4, calories: 15)
ingredient9 = Ingredient.new(name: "lime", dessert: dessert5, calories: 55)
ingredient10 = Ingredient.new(name: "cocoa", dessert: dessert5, calories: 65)
ingredient11 = Ingredient.new(name: "chocolate", dessert: dessert6, calories: 75)
ingredient12 = Ingredient.new(name: "white chocolate", dessert: dessert6, calories: 85)
ingredient13 = Ingredient.new(name: "water", dessert: dessert1, calories: 95)
ingredient14 = Ingredient.new(name: "sparkling water", dessert: dessert2, calories: 21)
ingredient15 = Ingredient.new(name: "salt", dessert: dessert3, calories: 22)
ingredient16 = Ingredient.new(name: "bananas", dessert: dessert4, calories: 23)



##### LYFT
driver1 = Driver.new(name: "peter")
driver2 = Driver.new(name: "paco")
driver3 = Driver.new(name: "joe")
driver4 = Driver.new(name: "adam")

passenger1 = Passenger.new(name: "laura")
passenger2 = Passenger.new(name: "maria")
passenger3 = Passenger.new(name: "joseph")
passenger4 = Passenger.new(name: "serge")
passenger5 = Passenger.new(name: "mark")
passenger6 = Passenger.new(name: "sophy")

ride1 = Ride.new(name:"to the dentist", driver: driver1, passenger: passenger1, distance: 50.0)
ride2 = Ride.new(name:"to the cinema", driver: driver2, passenger: passenger2, distance: 20.0)
ride3 = Ride.new(name:"to the hospital", driver: driver3, passenger: passenger3, distance: 30.0)
ride4 = Ride.new(name:"to the beach", driver: driver4, passenger: passenger4, distance: 40.0)
ride5 = Ride.new(name:"to the airport", driver: driver1, passenger: passenger5, distance: 50.0)
ride6 = Ride.new(name:"to work", driver: driver2, passenger: passenger6, distance: 60.0)
ride7 = Ride.new(name:"to my house", driver: driver3, passenger: passenger1, distance: 70.0)
ride8 = Ride.new(name:"to the port", driver: driver4, passenger: passenger2, distance: 100.0)
ride9 = Ride.new(name:"to the match", driver: driver1, passenger: passenger3, distance: 130.0)
ride10 = Ride.new(name:"back home", driver: driver2, passenger: passenger4, distance: 250.0)



### IMDB
manager1 = Manager.new(name: "joaquin")
manager2 = Manager.new(name: "paco")
manager3 = Manager.new(name: "tarantino")

movie1 = Movie.new(name: "avengers", manager: manager1)
movie2 = Movie.new(name: "pokemon", manager: manager2)
movie3 = Movie.new(name: "gol", manager: manager3)
movie4 = Movie.new(name: "last", manager: manager3)

actor1 = Actor.new(name: "leo")
actor2 = Actor.new(name: "jamie")
actor3 = Actor.new(name: "brad")

show1 = Show.new(name: "pokemon")
show2 = Show.new(name: "the office")
show3 = Show.new(name: "silicon valley")

episode1 = Episode.new(name: "first", show: show1)
episode2 = Episode.new(name: "second", show: show2)
episode3 = Episode.new(name: "third", show: show3)
episode4 = Episode.new(name: "fourth", show: show1)
episode5 = Episode.new(name: "fifth", show: show3)
episode6 = Episode.new(name: "sixth", show: show3)

character1 = Character.new(name: "peter", actor: actor1, manager: manager1, episode: episode1)
character2 = Character.new(name: "mark", actor: actor2, manager: manager2, episode: episode2)
character3 = Character.new(name: "ash", actor: actor3, manager: manager1, episode: episode3)
character4 = Character.new(name: "jon", actor: actor1, manager: manager1, episode: episode4)
character5 = Character.new(name: "tommy", actor: actor2, manager: manager2, episode: episode5)
character6 = Character.new(name: "lee", actor: actor3, manager: manager1, episode: episode6)
character7 = Character.new(name: "bruce", actor: actor2, manager: manager2, episode: episode5)
character8 = Character.new(name: "harry", actor: actor3, manager: manager1, episode: episode6)
character9 = Character.new(name: "lucy", actor: actor3, manager: manager3, episode: episode5)



##### CROWDFUNDING
user1 = User.new(name: "joaquin")
user2 = User.new(name: "george")
user3 = User.new(name: "richard")
user4 = User.new(name: "benjamin")

project1 = Project.new(name: "easychop", pledge_goal: 50000, user: user1)
project2 = Project.new(name: "exploding kittens", pledge_goal: 80000, user: user2)
project3 = Project.new(name: "wallet", pledge_goal: 90000, user: user3)
project4 = Project.new(name: "watch", pledge_goal: 60000, user: user1)
project5 = Project.new(name: "scooter", pledge_goal: 70000, user: user1)

pledge1 = Pledge.new(name: "let's do this", user: user1, project: project1, amount: 25000)
pledge2 = Pledge.new(name: "let's do this", user: user2, project: project2, amount: 45000)
pledge3 = Pledge.new(name: "let's do this", user: user3, project: project3, amount: 15000)
pledge4 = Pledge.new(name: "let's do this", user: user4, project: project4, amount: 5000)
pledge5 = Pledge.new(name: "let's do this", user: user1, project: project1, amount: 4000)
pledge6 = Pledge.new(name: "let's do this", user: user2, project: project1, amount: 65000)
pledge7 = Pledge.new(name: "let's do this", user: user3, project: project2, amount: 40000)
pledge8 = Pledge.new(name: "let's do this", user: user2, project: project4, amount: 7000)
pledge9 = Pledge.new(name: "let's do this", user: user1, project: project3, amount: 11000)
pledge10 = Pledge.new(name: "let's do this", user: user1, project: project1, amount: 9000)



##### GYM
trainer1 = Trainer.new(name: "peter")
trainer2 = Trainer.new(name: "mark")
trainer3 = Trainer.new(name: "joe")

client1 = Client.new(name: "joaquin", trainer: trainer1)
client2 = Client.new(name: "maria", trainer: trainer2)
client3 = Client.new(name: "jon", trainer: trainer3)
client4 = Client.new(name: "joseph", trainer: trainer1)
client5 = Client.new(name: "ken", trainer: trainer2)
client6 = Client.new(name: "mike")

location1 = Location.new(name: "madrid")
location2 = Location.new(name: "london")
location3 = Location.new(name: "paris")
location4 = Location.new(name: "milan")
location5 = Location.new(name: "new york")

# workout1 = Workout.new(name: "chest", trainer: trainer1, location: location1)
# workout2 = Workout.new(name: "legs", trainer: trainer2, location: location2)
# workout3 = Workout.new(name: "back", trainer: trainer3, location: location3)
# workout4 = Workout.new(name: "arms", trainer: trainer1, location: location1)
# workout5 = Workout.new(name: "full body", trainer: trainer2, location: location4)
# workout6 = Workout.new(name: "abs", trainer: trainer1, location: location5)
# workout7 = Workout.new(name: "shoulders", trainer: trainer2, location: location1)
# workout8 = Workout.new(name: "weak parts", trainer: trainer1, location: location2)
workout1 = Workout.new(name: "chest", trainer: trainer1, location: location1, client: client1)
workout2 = Workout.new(name: "legs", trainer: trainer2, location: location2, client: client2)
workout3 = Workout.new(name: "back", trainer: trainer3, location: location3, client: client3)
workout4 = Workout.new(name: "arms", trainer: trainer1, location: location1, client: client1)
workout5 = Workout.new(name: "full body", trainer: trainer2, location: location4, client: client2)
workout6 = Workout.new(name: "abs", trainer: trainer1, location: location5, client: client1)
workout7 = Workout.new(name: "shoulders", trainer: trainer2, location: location1, client: client5)
workout8 = Workout.new(name: "weak parts", trainer: trainer1, location: location2, client: client4)



Pry.start
