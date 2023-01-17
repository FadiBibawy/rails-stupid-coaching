class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question].downcase

    if (@question.include? 'to work') && ((@question.include? 'not') == false)
      @answer = 'Great!'
    elsif @question == ''
      @answer = 'You asked nothing, Ask something!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
      # puts ["I don't care, get dressed and go to work!", "Silly question, get dressed and go to work!"].sample
    end

    # def coach_answer_enhanced(your_message)
    #   # TODO: return coach answer to your_message, with additional custom rules of yours!
    #   if your_message.upcase == your_message
    #     puts "I can feel your motivation! #{coach_answer(your_message)}"
    #   else
    #     puts coach_answer(your_message)
    #   end
    # end
  end
end
