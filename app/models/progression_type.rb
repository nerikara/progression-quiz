# 数列の種別を表す定数を定義したクラス
class ProgressionType

  # 等差数列
  ARITHMETIC_PROGRESSION = 0
  ARITHMETIC_PROGRESSION.freeze

  # 等比数列
  GEOMETRIC_PROGRESSION = 1
  GEOMETRIC_PROGRESSION.freeze

  # 階差数列を持つ数列
  DIFFERENCE_PROGRESSION = 2
  DIFFERENCE_PROGRESSION.freeze

  # フィボナッチ数列
  FIBONACCI_PROGRESSION = 3
  FIBONACCI_PROGRESSION.freeze
end
