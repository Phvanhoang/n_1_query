class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_content, :parent_question_name
  belongs_to :parent_question, serializer: ParentQuestionSerializer
  has_many :answers, serializer: AnswerSerializer

  def parent_question_name
    object.parent_question.parent_content
  end
end
