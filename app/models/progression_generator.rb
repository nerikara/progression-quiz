# 数列を生成するクラス
class ProgressionGenerator

  # 数列を生成する
  def generate(type)
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new()
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new()
    else
      raise "Undefined progression type"
    end
  end
end
