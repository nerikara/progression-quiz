# 階差数列を伴う数列のクラス
# 一般項: an = a1 + sum( b1, b2, ... , b(n-1) )
class ProgressionWithDifferenceProgression < Progression

  # コンストラクタ
  # @param [Progression] difference_progression 階差数列
  # @param [Integer] size 数列のサイズ
  def initialize(difference_progression, size)
    # 初項
    @FIRST_VALUE = rand(1..10) * [-1, 1].sample
    @FIRST_VALUE.freeze

    # 階差数列
    @DIFFERENCE_PROGRESSION = difference_progression
    @DIFFERENCE_PROGRESSION.freeze

    super(size)
  end

  # 階差数列の一般項
  # an = a1 + sum( b1, b2, ... , b(n-1) )
  # @return [Integer] n項における値
  def general_term(n)
    if not is_term_in_range(n) then raise out_of_range_error_message(n)
    @FIRST_VALUE + (n - 1).times.map { |i| @DIFFERENCE_PROGRESSION.elements[i] }.sum
  end
end
