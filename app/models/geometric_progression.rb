# 等比数列クラス
# 一般項: an = a1 * r ** (n-1)
class GeometricProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項
    @first_term = rand(1..10) * [-1, 1].sample
    # 公比
    @tolerance = rand(2..10) * [-1, 1].sample
    super(size)
  end

  # 一般項
  # an = a1 * r ** (n-1)
  # @return [Integer] n項目の値
  def general_term(n)
    @first_term * @tolerance ** (n - 1)
  end
end
