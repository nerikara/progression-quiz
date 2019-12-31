# 数列を生成するクラス
class ProgressionGenerator

  # 数列を生成する
  def generate(type)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new(1, 2)
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new(1, 2)
    else
      raise "Undefined progression type"
    end
  end
end
