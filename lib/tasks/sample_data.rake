require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
      # create the primary test user
      User.create!(:name => "Charles Parra",
                   :email => "charles@parra.com",
                   :password => "foobar",
                   :password_confirmation => "foobar")

      # then create 99 other users
      99.times do |n|
        User.create!(:name => Faker::Name.name,
                     :email => "example-#{n+1}@railstutorial.org",
                     :password => "password",
                     :password_confirmation => "password")
      end

      # then for the first 2 users
      User.all(:limit => 2).each do |user|

        # create up to 4 alternate email addresses per user
        rand(4).times do
          uce = user.alternate_emails.create(:email => Faker::Internet.email)
        end

        # create up to 500 contacts per user
        rand(500).times do
          uc = user.contacts.create(:name => Faker::Name.name, 
                                    :important => rand(2))
                                    
          # and create up to 4 email addresses per contact
          uc.contact_emails.create(:email => Faker::Internet.email,
                                   :received_direct => rand(1000),
                                   :received_cc => rand(1000),
                                   :sent_direct => rand(1000),
                                   :sent_cc => rand(1000),
                                   :answered => rand(1000),
                                   :unread => rand(1000),
                                   :deleted => rand(1000))
                                   
          rand(3).times do
            uc.contact_emails.create(:email => Faker::Internet.email,
                                           :received_direct => rand(1000),
                                           :received_cc => rand(1000),
                                           :sent_direct => rand(1000),
                                           :sent_cc => rand(1000),
                                           :answered => rand(1000),
                                           :unread => rand(1000),
                                           :deleted => rand(1000))            
          end  
        end
      end
  end
end
