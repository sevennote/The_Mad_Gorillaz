class Survey < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  has_many :questions, dependent: :destroy
  has_many :submissions, dependent: :destroy
end
