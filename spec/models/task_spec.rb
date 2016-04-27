require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'associations' do
    it { should have_many(:commitments) }
    it { should have_many(:volunteers).through(:commitments) }
    it { should belong_to(:city) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:start_time) }
    it { is_expected.to validate_presence_of(:hours) }
    it { is_expected.to validate_presence_of(:image_path) }
    it { is_expected.to validate_presence_of(:city_id) }
  end
end
