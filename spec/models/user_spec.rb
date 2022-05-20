require 'rails_helper'

RSpec.describe User, type: :model do
 let(:user) { create(:user) }
 
 # Validations
 context 'ActiveModel validations' do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it do
    should validate_length_of(:password).
      is_at_least(6).
      on(:create)
  end
  end

  #Associations
  describe "ActiveRecord associations" do
    it { should have_many(:clients) }
  end

end