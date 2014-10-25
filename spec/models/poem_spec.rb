require 'rails_helper'

RSpec.describe Poem, :type => :model do

  describe '#text' do
    it { should validate_presence_of(:text) }
    it { should ensure_length_of(:text).is_at_most(300) }
    it { should ensure_length_of(:text).is_at_least(5) }
  end

  describe '#author' do
    it { should validate_presence_of(:author) }
    it { should ensure_length_of(:author).is_at_most(50) }
  end
end
