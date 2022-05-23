require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { create(:goal)}

  # Validations
  context 'ActiveModel validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount) }
  end

  #Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:user) }
    it { should have_many(:call_transactions) }
  end
end