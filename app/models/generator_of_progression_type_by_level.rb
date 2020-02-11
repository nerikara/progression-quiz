# レベルに応じた数列種別を生成するクラス
class GeneratorOfProgressionTypeByLevel

  # レベルに応じた数列種別のリストを生成する
  # @param [ProgressionQuizLevel] level 数列クイズのレベル
  # @return [Array[ProgressionType]] 数列種別のリスト
  def generate_progression_type_list_of_level(level)
    case level
    when ProgressionQuizLevel::EASY
      return [ProgressionType::ARITHMETIC_PROGRESSION,
              ProgressionType::GEOMETRIC_PROGRESSION]
    when ProgressionQuizLevel::NORMAL
      return [ProgressionType::PROGRESSION_WITH_1_DIFFERENCE_PROGRESSION,
              ProgressionType::FIBONACCI_PROGRESSION]
    when ProgressionQuizLevel::HARD
      return [ProgressionType::PROGRESSION_WITH_2_DIFFERENCE_PROGRESSIONS,
              ProgressionType::TRIBONACCI_PROGRESSION]
    else
      raise "Undefined"
    end
  end
end
