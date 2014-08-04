require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { has_content?(user.name) }
    it { has_title?(user.name) }
  end

describe "signup page" do
    before { visit signup_path }

    it { has_content?('Sign up') }
    it { has_title?(full_title('Sign up')) }
  end
  
end