require 'date'
require 'rails_helper'

RSpec.describe Message, type: :model do
	it "correct test case" do
		@user = create(:user, username: "sbaixas", email: "sbaixas@gmail.com", password: "12356")
		@message = create(:message, user_id: @user.id, date: Date.today + 1, content: "dolor ipsum lorem")
		expect(@message).to be_valid
	end

	it "not nil user_id validation" do
		@message = build(:message, user_id: nil)
		expect(@message).to_not be_valid
	end

	it "existant user_id validation" do
		@message = build(:message, user_id: -1)
		expect(@message).to_not be_valid
	end
end
