User.destroy_all
User.create!([
  {name: "", email:""}
  ])

Product.destroy_all
Product.create!([
  {name: "Coffee", description: "", image_url: nil},
  {name: "Eggs", description: "", image_url: nil},
  {name: "Milk", description: "", image_url: nil},
  {name: "Cheese", description: "", image_url: nil},
  {name: "Beer", description: "", image_url: nil},
  {name: "Wine", description: "", image_url: nil},
  {name: "Yoghurt", description: "", image_url: nil},
  {name: "Beef", description: "", image_url: nil},
  {name: "Duck", description: "", image_url: nil},
  {name: "Chicken", description: "", image_url: nil},
  {name: "Lamb", description: "", image_url: nil}
])
puts "You have #{Product.count} products!"

Source.destroy_all
Source.create!([
  {name: "Gunthorp Farms", address: "", city: "La Grange", state: "IN", zip: nil, website_url: "gunthorpfarms.com"},
  {name: "Triple S", address: "", city: "", state: "", zip: nil, website_url: ""},
  {name: "Slagel Family Farms", address: "", city: "Fairbury", state: "IL", zip: nil, website_url: "http://www.slagelfamilyfarm.com/"},
  {name: "Heartland Meats", address: "", city: "Mendota", state: "IL", zip: nil, website_url: "http://www.heartlandmeats.com/"},
  {name: "West Loop Salumi", address: "", city: "Chicago", state: "IL", zip: nil, website_url: "http://www.westloopsalumi.com/"},
  {name: "Prairie Farms", address: "", city: "Champaign", state: "IL ", zip: nil, website_url: "http://www.prairiefarms.com/"},
  {name: "Waseda Farms", address: "", city: "Door County", state: "WI", zip: nil, website_url: "http://www.wasedafarms.com/"},
  {name: "Castle Rock Farms", address: "", city: "Osseo", state: "WI", zip: nil, website_url: "http://castlerockfarms.net/index.php"}
])
puts "You have #{Source.count} sources!"

Store.destroy_all
Store.create!([
  {name: "Butcher and Larder", address: "1026 N. Milwaukee Ave.", city: "Chicago", state: "IL", zip: 60642, website_url: "http://thebutcherandlarder.com", latitude: "41.9002931", longitude: "-87.6621917"},
  {name: "Publican Quality Meats", address: "825 W Fulton Market", city: "Chicago", state: "IL", zip: 60607, website_url: "http://publicanqualitymeats.com", latitude: "41.8866372", longitude: "-87.6485525"},
  {name: "Chop Shop", address: "2033 W North Ave.", city: "Chicago", state: "IL", zip: 60647, website_url: "chopshopchi.com", latitude: "39.30942400000001", longitude: "-76.650841"},
  {name: "Gepperths", address: "1964 N Halsted", city: "Chicago", state: "IL", zip: 60614, website_url: "http://gepperthsmarket.webs.com", latitude: "41.9178389", longitude: "-87.64877179999999"},
  {name: "Foodease", address: "835 N. Michigan", city: "Chicago", state: "IL ", zip: 60611, website_url: "foodeasechicago.com", latitude: "37.4154921", longitude: "-94.6963249"},
  {name: "Plum Market", address: "1233 N. Wells", city: "Chicago", state: "IL", zip: 60610, website_url: "plummarket.com", latitude: "37.7048071", longitude: "-97.3155503"},
  {name: "Plenty on Division", address: "2036 W. Division", city: "Chicago", state: "IL", zip: 60622, website_url: "www.plentygoodfood.com/", latitude: "47.6112283", longitude: "-112.2148086"},
  {name: "Mrs Greens", address: "555 W. Webster", city: "Chicago", state: "IL", zip: 60614, website_url: "mrsgreens.com", latitude: "41.9217298", longitude: "-87.64302649999999"},
  {name: "Dill Pickle Co-op", address: "3039 W. Fullerton", city: "Chicago", state: "IL", zip: 60647, website_url: "dillpickle.coop", latitude: "41.9244411", longitude: "-87.70392249999999"},
  {name: "Binny’s South Loop", address: "1132 S. Jefferson St.", city: "Chicago", state: "IL", zip: 60607, website_url: "http://www.binnys.com/location/Chicago_-_South_Loop", latitude: "28.6526291", longitude: "-97.3850423"},
  {name: "Green Grocer Chicago", address: "1402 W. Grand Ave.", city: "Chicago", state: "IL", zip: 60642, website_url: "http://www.greengrocerchicago.com/", latitude: "34.4007701", longitude: "-103.2218686"},
  {name: "Eataly", address: "43 E. Ohio St.", city: "Chicago", state: "IL", zip: 60611, website_url: "http://www.eataly.com/eataly-chicago/", latitude: "40.8941849", longitude: "-97.34960079999999"},
  {name: "Olivias", address: "2014 W. Wabansia St", city: "Chicago", state: "IL", zip: 60647, website_url: "http://www.oliviasmarket.com", latitude: "41.9125185", longitude: "-87.6781172"}
])
puts "You have #{Store.count} stores!"
