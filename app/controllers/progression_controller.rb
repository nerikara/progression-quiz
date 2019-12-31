class ProgressionController < ApplicationController
  def home
    progression_generator = ProgressionGenerator.new()
    progression = progression_generator.generate(ProgressionType::ARITHMETIC_PROGRESSION)
    # progression = progression_generator.generate(ProgressionType::GEOMETRIC_PROGRESSION)

    progression_quiz_generator = ProgressionQuizGenerator.new()
    @progression_quiz = progression_quiz_generator.generate(progression)
  end
end
