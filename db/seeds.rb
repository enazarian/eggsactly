# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


stores_file = Rails.root.join('lib', 'seeds', 'stores.json').to_s
table_hashes = JSON.parse(open(stores_file).read)


Store.destroy_all
table_hashes.each do |store_hash|
  s = Store.new
  s.name = store_hash["name"]
  s.address = store_hash["address"]
  s.city = store_hash["city"]
  s.state = store_hash["state"]
  s.zip = store_hash["zip"]
  s.website_url = store_hash["website_url"]
  s.save
end
puts "Success. You have loaded the Store Table with #{Store.count} rows."
