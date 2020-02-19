# 数列を生成するクラス
class ProgressionGenerator

  # 数列を生成する
  # @param [ProgressionType] type 数列の種類
  # @param [Integer] size 数列のサイズ
  # @return [Progression] 数列
  # @raises ProgressionTypeが想定されない値である
  # @raises DIFFERENCE_PROGRESSION_COUNTの値が想定されない値である
  def generate(type:, size:)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new(size)
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new(size)
    when ProgressionType::PROGRESSION_WITH_1_DIFFERENCE_PROGRESSION
      difference_progression = generate(type: [ProgressionType::ARITHMETIC_PROGRESSION,
                                               ProgressionType::GEOMETRIC_PROGRESSION].sample,
                                        size: size)
      return ProgressionWithDifferenceProgression.new(difference_progression, size)
    when ProgressionType::PROGRESSION_WITH_2_DIFFERENCE_PROGRESSIONS
      difference_progression_1 = generate(type: [ProgressionType::ARITHMETIC_PROGRESSION,
                                                 ProgressionType::GEOMETRIC_PROGRESSION].sample,
                                          size: size)
      difference_progression_2 = ProgressionWithDifferenceProgression.new(difference_progression_1, size)
      return ProgressionWithDifferenceProgression.new(difference_progression_2, size)
    when ProgressionType::FIBONACCI_PROGRESSION
      return FibonacciProgression.new(size)
    when ProgressionType::TRIBONACCI_PROGRESSION
      return TribonacciProgression.new(size)
    else
      raise "Undefined progression type: '#{type}'"
    end
  end
end
