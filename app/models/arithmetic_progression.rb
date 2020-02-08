# 等差数列クラス
# 一般項: an = a1 + (n-1)d
class ArithmeticProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項
    @first_term = rand(-10..10)
    # 公差
    @tolerance = rand(1..10) * [-1, 1].sample
    super(size)
  end

  # 一般項
  # an = a1 + (n-1)d
  # @return [Integer] n項における値
  def general_term(n)
    if not is_term_in_range(n) then raise out_of_range_error_message(n)
    @first_term + @tolerance * (n - 1)
  end
end
