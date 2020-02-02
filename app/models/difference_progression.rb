# 階差数列クラス
class DifferenceProgression < Progression

  # コンストラクタ
  # @param [Progression] tolerance_progression 階差数列の公差に使用する数列
  # @param[Integer] size 数列のサイズ
  def initialize(tolerance_progression, size)
    @first_term = rand(1..10) * [-1, 1].sample
    @tolerance_progression = tolerance_progression
    super(size)
  end

  # 一般項
  # an = a1 + sum( b(n-1) )
  # @return [Integer] n項目の値
  def general_term(n)
    @first_term + (n-1).times.map { |i| @tolerance_progression.elements[i] }.sum
  end
end
