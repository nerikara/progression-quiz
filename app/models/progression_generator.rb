# 数列を生成するクラス
class ProgressionGenerator

  # 数列を生成する
  def generate(type)
    first_term = rand(-10..10) + 1    # 0を回避するために+1
    tolerance = rand(-10..10) + 1     # 0を回避するために+1
    case type
    when ProgressionType::ARITHMETIC_PROGRESSION
      return ArithmeticProgression.new(first_term, tolerance)
    when ProgressionType::GEOMETRIC_PROGRESSION
      return GeometricProgression.new(first_term, tolerance)
    else
      raise "Undefined progression type"
    end
  end
end
