namespace 'db' do
  namespace 'seed' do
    desc "Dump development data into seeds.rb"
    # in order for this task to have access to active records, load 'environment'
    # https://stackoverflow.com/questions/876396/do-rails-rake-tasks-provide-access-to-activerecord-models
    task :dev => :environment do

      # basic user for development
      User.create!(
          email: "test@test.com",
          password: "testing",
        )

      30.times do
        User.create!(
            email: Faker::Internet.email,
            password: "testing"
        )
      end
      puts "=-=-=-=-=-=-=-=-=-="
      puts "Seeded development"
      puts "=-=-=-=-=-=-=-=-=-="
    end
  end
end
