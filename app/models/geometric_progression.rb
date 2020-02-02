# 等比数列クラス
class GeometricProgression < Progression

  # コンストラクタ
  def initialize
    @first_term = rand(1..10) * [-1, 1].sample
    @tolerance = rand(2..10) * [-1, 1].sample
    super
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
    self.size.times do |i|
      progression.push(first_term * tolerance ** i)
    end
    return progression
  end
end
