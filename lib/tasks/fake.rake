namespace :fake do
  desc 'Fakes user desposit submissions'
  task data: :environment do
    faker = Faker.new

    while true
      faker.create_deposit(created_at: Time.now)

      puts 'Created fake deposit.'

      sleep 0.5
    end
  end
end
