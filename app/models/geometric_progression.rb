# 等比数列クラス
class GeometricProgression < Progression

  # コンストラクタ
  def initialize(first_term, tolerance)
    @first_term = first_term
    @tolerance = tolerance
    super()
  end

  # 初項
  def first_term
    @first_term
  end

  # 公比
  def tolerance
    @tolerance
  end

  # 数列本体
  def elements
    progression = []
    size.times do |i|
      progression.push(first_term * tolerance ** i)
    end
    return progression
  end
end