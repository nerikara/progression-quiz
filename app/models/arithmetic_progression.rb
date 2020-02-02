# 等差数列クラス
class ArithmeticProgression < Progression

  # コンストラクタ
  # @param[Integer] size 数列のサイズ
  def initialize(size)
    first_term = rand(-10..10)
    tolerance = rand(1..10) * [-1, 1].sample
    super(first_term, tolerance, size)
  end

  # 数列本体
  def elements
    progression = []
    @size.times do |i|
      progression.push(@first_term + @tolerance * i)
    end
    return progression
  end
end
