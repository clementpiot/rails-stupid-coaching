# frozen_string_literal: true

# Service to download ftp files from the server
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(question)
    if question == (question.upcase) && (question.include? '?')
      'I can feel your motivation! Silly question, get dressed and go to work!'
    elsif question.downcase == 'i am going to work right now!'
      ''
    elsif question == question.upcase
      "I can feel your motivation! I don't care, get dressed and go to work!"
    elsif question.include? '?'
      'Silly question, get dressed and go to work!'
    else "I don't care, get dressed and go to work!"
    end
  end
end
