# 等差数列クラス
class ArithmeticProgression < Progression

  # コンストラクタ
  # @param[Integer] size 数列のサイズ
  def initialize(size)
    @first_term = rand(-10..10)
    @tolerance = rand(1..10) * [-1, 1].sample
    super(size)
  end

  # 一般項
  # an = a1 + (n-1)d
  # @return [Integer] n項目の値
  def general_term(n)
    @first_term + @tolerance * (n - 1)
  end
end
