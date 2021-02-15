class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_answer = ""
    case params[:question]
      when params[:question] == "I am going to work" then @coach_answer = "Great!"
      when params[:question].last == "?" then @coach_answer = "Silly question, get dressed and go to work!"
      else @coach_answer = "I don't care, get dressed and go to work." 
    end
  end

end
