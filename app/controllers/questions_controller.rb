class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    #  --> escrevo raise para ver os parametros. Nesse caso, o único parametro que tenho é a
    # question. Mas os parâmetros serão todos os input do tipo "text".

    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
