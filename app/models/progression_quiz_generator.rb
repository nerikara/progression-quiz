# 数列クイズを生成する
class ProgressionQuizGenerator

  # 数列クイズを生成する
  #
  # @param [Progression] progression 数列
  def generate(progression)
    return ProgressionQuiz.new(progression)
  end

  # レベルに応じたクイズを生成する
  # @param [ProgressionQuizLevel] レベル
  # @return [ProgressionQuiz] 数列クイズ
  def generate_quiz_of_level(level)
    progression_type_generator = GeneratorOfProgressionTypeByLevel.new
    progression_type =
        progression_type_generator.generate_progression_type_list_of_level(level).sample
    progression_generator = ProgressionGenerator.new
    progression = progression_generator.generate(progression_type)
    return generate(progression)
  end
end
