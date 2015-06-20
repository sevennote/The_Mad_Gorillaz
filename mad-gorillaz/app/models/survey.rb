class Survey < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  has_many :questions
  has_many :submissions
end
