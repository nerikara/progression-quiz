# 数列クイズを生成する
class ProgressionQuizGenerator

  # レベルに応じたクイズを生成する
  # @param [ProgressionQuizLevel] level レベル
  # @param [Integer] size 数列のサイズ
  # @return [ProgressionQuiz] 数列クイズ
  def generate(level:, size:)
    progression_type_generator = GeneratorOfProgressionTypeByLevel.new
    progression_type =
        progression_type_generator.generate_progression_type_list_by_level(level).sample
    progression_generator = ProgressionGenerator.new
    progression = progression_generator.generate(type: progression_type, size: size)
    return ProgressionQuiz.new(progression)
  end
end
