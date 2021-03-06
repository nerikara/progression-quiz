# 等差数列クラス
# 一般項: an = a1 + (n-1)d
class ArithmeticProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項
    @FIRST_VALUE = rand(-10..10)
    @FIRST_VALUE.freeze

    # 公差
    @TOLERANCE = rand(1..10) * [-1, 1].sample
    @TOLERANCE.freeze

    super(size)
  end

  # 一般項
  # an = a1 + (n-1)d
  # @return [Integer] n項における値
  def general_term(n)
    raise out_of_range_error_message(n) if not is_term_in_range(n)
    @FIRST_VALUE + @TOLERANCE * (n - 1)
  end
end
