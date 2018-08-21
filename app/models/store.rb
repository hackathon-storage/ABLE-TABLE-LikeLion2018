class Store < ApplicationRecord
  belongs_to :user
  belongs_to :station
  has_many :store_comments, dependent: :destroy
end
