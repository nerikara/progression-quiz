# 階差数列を伴う数列のクラス
# 一般項: an = a1 + sum( b1, b2, ... , b(n-1) )
class DifferenceProgression < Progression

  # コンストラクタ
  # @param [Progression] tolerance_progression 階差数列
  # @param [Integer] size 数列のサイズ
  def initialize(tolerance_progression, size)
    # 初項
    @first_term = rand(1..10) * [-1, 1].sample
    # 階差数列
    @tolerance_progression = tolerance_progression
    super(size)
  end

  # 階差数列の一般項
  # an = a1 + sum( b1, b2, ... , b(n-1) )
  # @return [Integer] n項における値
  def general_term(n)
    if n <= 0 then raise out_of_range_error_message(n)
    @first_term + (n-1).times.map { |i| @tolerance_progression.elements[i] }.sum
  end
end
