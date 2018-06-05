require 'date'

FactoryBot.define do
	factory :user do
		username "defaultUser"
		email "user@example.com"
		password "pass123"
	end

	factory :message do
		user "1"
		date Date.today
		content "Lorem ipsum dolor"
	end
# Add other factories in here
end