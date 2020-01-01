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
end
