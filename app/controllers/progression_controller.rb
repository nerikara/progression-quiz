class ProgressionController < ApplicationController

  def home
  end

  def quiz
    progression_generator = ProgressionGenerator.new()
    @progression_type = params[:progression_type].to_i
    progression = progression_generator.generate(@progression_type)

    progression_quiz_generator = ProgressionQuizGenerator.new()
    all_values = progression_quiz_generator.generate(progression).values
    @hidden_value = all_values.pop
    @displayed_values = all_values
  end

  def answer
    progression_type = params[:progression_type].to_i
    answer = params[:answer].to_i
    hidden_value = params[:hidden_value].to_i
    if answer == hidden_value
      redirect_to("/quiz/#{progression_type}", flash: { right: "正解！" })
    else
      redirect_to("/quiz/#{progression_type}", flash: { wrong: "不正解..." })
    end
  end
end
