namespace :fake do
  desc 'Fakes user desposit submissions'
  task data: :environment do
    faker = GreenFaker.new

    while true
      faker.create_deposit(created_at: Time.now)

      puts 'Created fake deposit.'

      sleep 1
    end
  end
end
