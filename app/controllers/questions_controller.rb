class QuestionsController < ApplicationController
  def index
    # NOT WITH WHERE OR SORT

    # render json: Question.all.preload(:answers)
    # render json: Question.all.eager_load(:answers)
    # render json: Question.all.includes(:answers)
    # render json: Question.all.joins(:answers)

    # WITH WHERE

    # render json: Question.all.preload(:answers).where(question_content: "Question 1")
    # render json: Question.all.preload(:answers).where(answers: { answer_content: "Answer 1-1" })
    # render json: Question.all.eager_load(:answers).where(answers: { answer_content: "Answer 1-1" })
    # render json: Question.all.includes(:answers).where(answers: { answer_content: "Answer 1-1" })

    # render json: Question.all.preload(:answers, :parent_question)
    # .where("(parent_questions.parent_content  ||  ' '  || questions.question_content) LIKE '%Parent%'")
    # render json: Question.all.includes(:answers, :parent_question)
    # .where("(parent_questions.parent_content  ||  ' '  || questions.question_content) LIKE '%Parent%'")
    #                       .select("questions.*, (parent_questions.parent_content  ||  ' '  || questions.question_content)")
    # render json: Question.all.eager_load(:answers, :parent_question)
    #                       .select("questions.*, (parent_questions.parent_content  ||  ' '  || questions.question_content) AS ct")
    #                       .order("ct DESC").distinct
  end
end
