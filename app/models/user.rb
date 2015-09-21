class User < ActiveRecord::Base
  has_many :events, foreign_key: 'creator_id'

  validates :name, presence: true
  validates :email, presence: true
end