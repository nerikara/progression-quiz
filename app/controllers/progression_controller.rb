class ProgressionController < ApplicationController
  def home
    @progression = [1, 2, 3, 4]
    # generator = ProgressionGenerator.new()
    # @progression = generator.generate(ProgressionType::ARITHMETIC_PROGRESSION).elements
  end
end
