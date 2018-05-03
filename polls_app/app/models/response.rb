# == Schema Information
#
# Table name: responses
#
#  id           :bigint(8)        not null, primary key
#  user_key     :integer          not null
#  question_key :integer
#  answer_key   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Response < ApplicationRecord

  belongs_to :respondent,
  primary_key: :id,
  foreign_key: :user_key,
  class_name: :User

  has_one :answer_choice,
  primary_key: :id,
  foreign_key: :answer_key,
  class_name: :AnswerChoice

end
