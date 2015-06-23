require 'rails_helper'

RSpec.describe Camera, type: :model do
  describe 'validations' do
    it { should validate_presence_of :exid }
    it { should validate_presence_of :owner_id }
    it { should validate_presence_of :is_public }
    it { should validate_presence_of :config }
    it { should validate_presence_of :name }
    it { should validate_presence_of :discoverable }
  end

  describe 'associations' do
    it { should belong_to(:owner).class_name('User') }
    it { should belong_to(:vendor_model).class_name('VendorModel') }
    it { should have_many(:camera_shares) }
  end

  it 'has a valid factory' do
    expect(build(:camera)).to be_valid
  end
end
