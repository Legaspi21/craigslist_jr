class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :body
  validates_presence_of :price
end
