# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "this seed file automatically create one admin acount, 10 public jobs, and 10 hidden jobs."

create_account = User.create([email: 'example@163.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin acount created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i}", description: "this is the No. #{i} Public Job created by seed", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i}", description: "this is the No. #{i} Hidden Job created by seed", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "true"])
end
puts "10 Hidden jobs created."
