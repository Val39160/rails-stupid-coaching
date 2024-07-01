class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ['I am going to work']
    @question = params[:answer]
    if @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @answer = "Great"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
