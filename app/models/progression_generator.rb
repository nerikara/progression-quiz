# 数列を生成するクラス
class ProgressionGenerator

  # 数列を生成する
  def generate(type)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new()
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new()
    when ProgressionType::DIFFERENCE_PROGRESSION
      tolerance_progression = generate([ProgressionType::ARITHMETIC_PROGRESSION,
                                        ProgressionType::GEOMETRIC_PROGRESSION].sample)
      return DifferenceProgression.new(tolerance_progression)
    else
      raise "Undefined progression type"
    end
  end
end
