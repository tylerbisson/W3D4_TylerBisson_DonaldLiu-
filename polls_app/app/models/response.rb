class Response < ApplicationRecord
validates :user_id, presence: true, uniqueness: true 
validates :answer_choice_id, presence: true, uniqueness: true 

def no_duplicate_response 

end

def sibling_responses
  
end

# def question
#   has_one :
# end

  belongs_to :answerchoice,
  class_name: :AnswerChoice,
  primary_key: :id,
  foreign_key: :answer_choice_id

  belongs_to :respondent,
  class_name: :User, 
  primary_key: :id,
  foreign_key: :user_id

  has_one :question, 
  through: :answerchoice, 
  source: :question

end