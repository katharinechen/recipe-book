require 'rails_helper'

describe User do

  it { should validate_presence_of :name }
  it { should have_many :recipes }

  it "should order the users alphabetically" do 
  	new_user1 = User.create(name: "Susan Miller")
 	new_user = User.create(name: "Bob Miller")
 	expect(User.all).to eq [new_user, new_user1]
  end 

end
