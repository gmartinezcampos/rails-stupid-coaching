class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = if @questions.include? "?"
      "Silly question, get dressed and go to work!"
    elsif @questions.include? "I am going to work right now!"
      "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
