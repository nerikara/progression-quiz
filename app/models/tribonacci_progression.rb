# トリボナッチ数列
class TribonacciProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項の値
    @FIRST_VALUE = rand(1..10)
    @FIRST_VALUE.freeze

    # 2項の値
    @SECOND_VALUE = rand(1..10)
    @SECOND_VALUE.freeze

    # 3項の値
    @THIRD_VALUR = rand(1..10)
    @THIRD_VALUR.freeze

    super(size)
  end

  # 一般項
  # a1 = 初項の値
  # a2 = 2項の値
  # a3 = 3項の値
  # an = a(n-3) + a(n-2) + a(n-1) (when: n >= 4)
  # @param [Integer] n 添字
  # @return [Integer] n項における値
  def general_term(n)
    raise out_of_range_error_message(n) if not is_term_in_range(n)

    if n == 1
      return @FIRST_VALUE
    elsif n == 2
      return @SECOND_VALUE
    elsif n == 3
      return @THIRD_VALUR
    else
      return general_term(n - 3) + general_term(n - 2) + general_term(n - 1)
    end
  end
end
