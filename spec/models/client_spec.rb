require 'rails_helper'

RSpec.describe Client, type: :model do
  let(:client) { create(:client)}

  # Validations
  context 'ActiveModel validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:age) }
    it { should validate_numericality_of(:age) }
    it { should validate_presence_of(:revenue) }
    it { should validate_numericality_of(:revenue) }
  end

  #Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:user) }
  end
end