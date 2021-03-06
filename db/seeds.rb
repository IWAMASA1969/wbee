# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_girl'
Dir[Rails.root.join("spec/factories/*.rb")].each { |f| require f }

Task.delete_all
WbeeUser.delete_all
WbeeUserPassword.delete_all
WbeeUserRunTask.delete_all

# WbeeUser
FactoryGirl.create(:bowhead_for_seeds)
