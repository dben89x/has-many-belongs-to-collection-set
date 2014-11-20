class Toy < ActiveRecord::Base

  belongs_to :cat
  validates :cat_id, presence: true
  validates :name, presence: true
end
