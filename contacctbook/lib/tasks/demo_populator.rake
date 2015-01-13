namespace :populator do
  desc "Create demo uses using rake populate:demo"   
  task :demo => :environment do
  	require 'populator'
  	require 'faker'
    generate
  end

  def generate
  	User.populate 1000 do |user|
  		user.name = Faker::Name.name
  		user.email = Faker::Internet.email
  		user.phone_number = Faker::Number.number(10)
  	end
  end
end
