class Comment < ActiveRecord::Base
  has_many :notifications, dependent: :destroy
  belongs_to :blog
  belongs_to :user
end
