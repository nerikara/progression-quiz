# 数列を生成するクラス
class ProgressionGenerator

  # 数列のサイズ
  PROGRESSION_SIZE = 6
  PROGRESSION_SIZE.freeze

  # 数列を生成する
  def generate(type)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new(PROGRESSION_SIZE)
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new(PROGRESSION_SIZE)
    when ProgressionType::DIFFERENCE_PROGRESSION
      tolerance_progression = generate([ProgressionType::ARITHMETIC_PROGRESSION,
                                        ProgressionType::GEOMETRIC_PROGRESSION].sample)
      return DifferenceProgression.new(tolerance_progression, PROGRESSION_SIZE)
    else
      raise "Undefined progression type"
    end
  end
end
