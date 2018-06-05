require 'rails_helper'

RSpec.describe User, type: :model do
	it "correct test case" do
		@user = create(:user, username: "sbaixas", email: "sbaixas@gmail.com", password: "12356")
		expect(@user).to be_valid
	end

	it "unique username validation" do
		@user = create(:user, username: "sbaixas", email: "sbaixas@gmail.com", password: "12356")
		@user2 = build(:user, username: "sbaixas")
		expect(@user2).to_not be_valid
	end

	it "unique email validation" do
		@user = create(:user, username: "sbaixas", email: "sbaixas@gmail.com", password: "12356")
		@user2 = build(:user, email: "sbaixas@gmail.com")
		expect(@user2).to_not be_valid
	end

	it "username less or equal to 20 characters validation"  do
		@user = build(:user, username: "sbaixas12345678901234")
		expect(@user).to_not be_valid
  	end
end
