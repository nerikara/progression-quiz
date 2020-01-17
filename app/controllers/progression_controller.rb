class ProgressionController < ApplicationController

  def home
    progression_generator = ProgressionGenerator.new()
    progression = progression_generator.generate(ProgressionType::ARITHMETIC_PROGRESSION)
    # progression = progression_generator.generate(ProgressionType::GEOMETRIC_PROGRESSION)

    progression_quiz_generator = ProgressionQuizGenerator.new()
    all_values = progression_quiz_generator.generate(progression).values
    @hidden_value = all_values.pop
    @displayed_values = all_values
  end

  def answer
    answer = params[:answer].to_i
    hidden_value = params[:hidden_value].to_i
    if answer == hidden_value
      redirect_to("/", flash: { right: "正解！" })
    else
      redirect_to("/", flash: { wrong: "不正解..." })
    end
  end
end
