require 'rails_helper'

RSpec.describe CallTransaction, type: :model do
  let(:call_transaction) { create(:call_transaction)}

  #Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:user) }
    it { should belong_to(:goal) }
    it { should belong_to(:client) }
  end
end