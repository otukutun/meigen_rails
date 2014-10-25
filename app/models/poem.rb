class Poem < ActiveRecord::Base
  validates :text, presence: true, length: { maximum: 300, minimum: 5 }
  validates :author, presence: true, length: { maximum: 50}
end
