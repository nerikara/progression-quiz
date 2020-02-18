# 数列クイズを生成する
class ProgressionQuizGenerator

  # レベルに応じたクイズを生成する
  # @param [ProgressionQuizLevel] レベル
  # @return [ProgressionQuiz] 数列クイズ
  def generate_quiz_by_level(level)
    progression_type_generator = GeneratorOfProgressionTypeByLevel.new
    progression_type =
        progression_type_generator.generate_progression_type_list_by_level(level).sample
    progression_generator = ProgressionGenerator.new
    progression = progression_generator.generate(progression_type)
    return ProgressionQuiz.nwe(progression)
  end
end
