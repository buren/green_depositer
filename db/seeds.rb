# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

faker = GreenFaker.new

15.times { faker.create_user }
2500.times { faker.create_deposit }