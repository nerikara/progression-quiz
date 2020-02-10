# 等比数列クラス
# 一般項: an = a1 * r ** (n-1)
class GeometricProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項
    @FIRST_VALUE = rand(1..10) * [-1, 1].sample
    @FIRST_VALUE.freeze

    # 公比
    @TOLERANCE = rand(2..10) * [-1, 1].sample
    @TOLERANCE.freeze

    super(size)
  end

  # 一般項
  # an = a1 * r ** (n-1)
  # @return [Integer] n項における値
  def general_term(n)
    raise out_of_range_error_message(n) if not is_term_in_range(n)
    @FIRST_VALUE * @TOLERANCE ** (n - 1)
  end
end
