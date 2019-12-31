# 等差数列クラス
class ArithmeticProgression < Progression

  # コンストラクタ
  def initialize()
    @first_term = rand(-10..10)
    @tolerance = rand(1..10) * [-1, 1].sample
    super()
  end

  # 初項
  def first_term
    @first_term
  end

  # 公差
  def tolerance
    @tolerance
  end

  # 数列本体
  def elements
    progression = []
    size.times do |i|
      progression.push(first_term + tolerance * i)
    end
    return progression
  end
end
