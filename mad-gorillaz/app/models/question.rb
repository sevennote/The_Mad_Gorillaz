class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :possible_answers, dependent: :destroy
  has_many :user_answers, dependent: :destroy
end
