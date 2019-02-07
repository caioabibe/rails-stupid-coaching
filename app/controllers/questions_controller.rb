class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_content = params[:question_type]
    if @question_content == 'I am going to work'
      @answer = 'Great'
    elsif @question_content[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
