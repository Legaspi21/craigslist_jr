class Article < ApplicationRecord
  belongs_to :category
  validates_presence_of :name
  validates_presence_of :body
  validates_presence_of :price
end
