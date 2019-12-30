class ProgressionController < ApplicationController
  def home
    generator = ProgressionGenerator.new()
    @progression = generator.generate(ProgressionType::ARITHMETIC_PROGRESSION).elements
  end
end
