require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# AIRBNB -----
g1 = Guest.new("Jessie")
g2 = Guest.new("Crazy 8")
g3 = Guest.new("Tuco")
g4 = Guest.new("Walter")


l1 = Listing.new("Hilton", "London")
l2 = Listing.new("Henriettas Hideaways", "Cape Town")
l3 = Listing.new("Fire and Ice", "Cape Town")

t1 = Trip.new(g1, l1)
t2 = Trip.new(g2, l1)
t3 = Trip.new(g3, l2)
t4 = Trip.new(g3, l2)
t5 = Trip.new(g2, l3)
t6 = Trip.new(g1, l3)
t7 = Trip.new(g3, l3)
t8 = Trip.new(g1, l3)
t9 = Trip.new(g4, l2)
# -----


# Bakery ----
# bakery1 = Bakery.new("Tasty Treats")
# bakery2 = Bakery.new("Golden Goodies")

# cake = Dessert.new("Cake", bakery1)

# flour = Ingredient.new("flour", cake, 10)
# water = Ingredient.new("water", cake, 0)
# eggs = Ingredient.new("eggs", cake, 20)
# chocolate = Ingredient.new("chocolate", cake, 150)
# sugar1 = Ingredient.new("sugar", cake, 200)

# cheesecake = Dessert.new("Cheesecake", bakery2)

# cream = Ingredient.new("cream", cheesecake, 30)
# cream_cheese = Ingredient.new("cream_cheese", cheesecake, 64)
# digestives = Ingredient.new("digestives", cheesecake, 85)
# sugar2 = Ingredient.new("sugar", cheesecake, 150)


# cupcake = Dessert.new("Cupcake", bakery2)

# flour2 = Ingredient.new("flour", cupcake, 4)
# eggs2 = Ingredient.new('eggs', cupcake, 15)
# water2 = Ingredient.new('water', cupcake, 0)
# chocolate_sprinkles = Ingredient.new('chocolate sprinkles', cupcake, 82)
# chocolate_icing = Ingredient.new('chocolate icing', cupcake, 129)

# ----


# Lyft -----
# d1 = Driver.new("Jim")
# d2 = Driver.new("Mick")
# d3 = Driver.new("Sam")

# p1 = Passenger.new("Lisa")
# p2 = Passenger.new("Bart")
# p3 = Passenger.new("Homer")

# r1 = Ride.new(p1, d1, 2.2)
# r2 = Ride.new(p1, d2, 49.2)
# r3 = Ride.new(p1, d2, 51.9)
# r4 = Ride.new(p2, d3, 3.0)
# r5 = Ride.new(p3, d3, 3.9)
# r6 = Ride.new(p3, d2, 1.2)
# r7 = Ride.new(p3, d1, 3.2)
# r7 = Ride.new(p3, d2, 98.2)
# ------

# IMDB -----
# --actors
# leo = Actor.new("Leonardo DiCaprio")
# jonah = Actor.new("Jonah Hill")
# meryl = Actor.new("Meryl Streep")
# tom_hardy = Actor.new("Tom Hardy")
# tom_hanks = Actor.new("Tom Hanks")
# margot = Actor.new("Margot Robbie")
# leonard_nimoy = Actor.new("Leonard Nimoy")
# zach_quinto = Actor.new("Zachary Quinto")



# # --movies
# bronson = Movie.new("Bronson")
# legend = Movie.new("Legend")
# revenant = Movie.new("The Revenant")
# forrest_gump = Movie.new("Forrest Gump")
# wolf_of_wall_street = Movie.new("The Wolf of Wall Street")
# mamma_mia = Movie.new("Mamma Mia")
# star_trek_movie = Movie.new("Star Trek")
# toy_story_1 = Movie.new("Toy Story")
# toy_story_2 = Movie.new("Toy Story 2")
# toy_story_3 = Movie.new("Toy Story 3")

# #---shows
# star_trek_show = Show.new("Star Trek")
# heroes = Show.new("Heroes")

# # --characters
# woody = Character.new("Woody", tom_hanks)
# forrest = Character.new("Forrest Gump", tom_hanks)
# charles_bronson = Character.new("Charles Bronson", tom_hardy)
# ronnie_kray = Character.new("Ronnie Kray", tom_hardy)
# reggie_kray = Character.new("Reggie Kray", tom_hardy)
# hugh_glass = Character.new("Hugh Glass", leo)
# john_fitz = Character.new("John Fitzgerald", tom_hardy)
# jordan_belfort = Character.new("Jordan Belfort", leo)
# naomi = Character.new("Naomi Lapaglia", margot)
# donnie = Character.new("Donnie Azoff", jonah)
# donna = Character.new("Donna Sheridan-Carmichael", meryl)
# spock = Character.new("Spock", zach_quinto)

# sylar = Character.new("Sylar", zach_quinto)

# # --- showroles
# srole1 = ShowRole.new(heroes, sylar)
# srole2 = ShowRole.new(star_trek_show, spock)

# # --- movieroles
# mrole1 = MovieRole.new(bronson, charles_bronson)
# mrole2 = MovieRole.new(legend, reggie_kray)
# mrole3 = MovieRole.new(legend, ronnie_kray)
# mrole4 = MovieRole.new(toy_story_1, woody)
# mrole5 = MovieRole.new(toy_story_2, woody)
# mrole6 = MovieRole.new(toy_story_3, woody)
# mrole7 = MovieRole.new(forrest_gump, forrest)
# mrole8 = MovieRole.new(revenant, hugh_glass)
# mrole9 = MovieRole.new(revenant, john_fitz)
# mrole10 = MovieRole.new(wolf_of_wall_street, jordan_belfort)
# mrole11 = MovieRole.new(wolf_of_wall_street, naomi)
# mrole12 = MovieRole.new(wolf_of_wall_street, donnie)
# mrole13 = MovieRole.new(mamma_mia, donna)
# mrole14 = MovieRole.new(star_trek_movie, spock)

# -----

#--- GYM

# average_joes = Gym.new("Average Joe's Gymnasium")
# globo_gym = Gym.new("Globo Gym")

# trainer1 = Trainer.new("Peter La Fleur")
# trainer2 = Trainer.new("White Goodman")
# trainer3 = Trainer.new("Patches O'Houlihan")

# av_joes_location1 = Location.new(average_joes, "Average Street, LA")
# globo_location1 = Location.new(globo_gym, "Dumbell Driveway, LA")
# globo_location2 = Location.new(globo_gym, "Roid Rage Avenue, LA")

# client1 = Client.new("'Pirate' Steve", trainer1)
# client2 = Client.new("Justin", trainer1)
# client3 = Client.new("Blade", trainer2)
# client4 = Client.new("Lazer", trainer2)
# client5 = Client.new("Blazer", trainer2)

# booking1 = Booking.new(trainer1, client1, av_joes_location1)
# booking2 = Booking.new(trainer1, client2, av_joes_location1)
# booking3 = Booking.new(trainer2, client3, globo_location1)
# booking4 = Booking.new(trainer2, client4, globo_location2)
# booking5 = Booking.new(trainer2, client5, globo_location2)
# booking6 = Booking.new(trainer3, client1, av_joes_location1)
# -----

# -- CrowdFunding
oli = User.new('Oli')
tegan = User.new('Tegan')
sohaib = User.new('Sohaib')
joaquin = User.new('Joaquin')
george = User.new('George')

project1 = Project.new('Seeders', oli, 5000)
project2 = Project.new('Razers', oli, 3000)
project3 = Project.new('Sackly', tegan, 4000)
project4 = Project.new('Backly', joaquin, 4000)

pledge1 = Pledge.new(sohaib, project1, 2300)
pledge2 = Pledge.new(sohaib, project3, 300)
pledge3 = Pledge.new(joaquin, project1, 2400)
pledge4 = Pledge.new(george, project3, 1300)
pledge5 = Pledge.new(george, project1, 900)
pledge6 = Pledge.new(george, project3, 1200)
pledge7 = Pledge.new(oli, project3, 100)
pledge8 = Pledge.new(oli, project3, 200)
pledge9 = Pledge.new(tegan, project4, 4000)





Pry.start
