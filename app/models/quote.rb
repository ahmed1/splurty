class Quote < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 140, minimum: 3}
  #prevents items from being saved in our database with a blank saying
  #add character count limits
  validates :author, presence: true, length: { maximum: 50, minimum: 3}
end
