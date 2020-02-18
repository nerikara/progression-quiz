# 数列を生成するクラス
class ProgressionGenerator

  # 数列のサイズ
  PROGRESSION_SIZE = 6
  PROGRESSION_SIZE.freeze

  # 数列を生成する
  # @param [ProgressionType] type 数列の種類
  # @return [Progression] 数列
  # @raises ProgressionTypeが想定されない値である
  # @raises DIFFERENCE_PROGRESSION_COUNTの値が想定されない値である
  def generate(type)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new(PROGRESSION_SIZE)
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new(PROGRESSION_SIZE)
    when ProgressionType::PROGRESSION_WITH_1_DIFFERENCE_PROGRESSION
      difference_progression = generate([ProgressionType::ARITHMETIC_PROGRESSION,
                                         ProgressionType::GEOMETRIC_PROGRESSION].sample)
      return ProgressionWithDifferenceProgression.new(difference_progression, PROGRESSION_SIZE)
    when ProgressionType::PROGRESSION_WITH_2_DIFFERENCE_PROGRESSIONS
      difference_progression_1 = generate([ProgressionType::ARITHMETIC_PROGRESSION,
                                           ProgressionType::GEOMETRIC_PROGRESSION].sample)
      difference_progression_2 = ProgressionWithDifferenceProgression.new(difference_progression_1, PROGRESSION_SIZE)
      return ProgressionWithDifferenceProgression.new(difference_progression_2, PROGRESSION_SIZE)
    when ProgressionType::FIBONACCI_PROGRESSION
      return FibonacciProgression.new(PROGRESSION_SIZE)
    when ProgressionType::TRIBONACCI_PROGRESSION
      return TribonacciProgression.new(PROGRESSION_SIZE)
    else
      raise "Undefined progression type: '#{type}'"
    end
  end
end
