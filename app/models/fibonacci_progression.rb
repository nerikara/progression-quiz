# フィボナッチ数列クラス
class FibonacciProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 初項の値
    @FIRST_VALUE = rand(1..10)
    @FIRST_VALUE.freeze

    # 2項の値
    @SECOND_VALUE = rand(1..10)
    @SECOND_VALUE.freeze

    super(size)
  end

  # 一般項
  # a1 = 任意の数
  # a2 = 任意の数
  # an = a(n-2) + a(n-1) (when: n >= 3)
  # @param [Integer] n 添字
  # @return [Integer] n項における値
  def general_term(n)
    if not is_term_in_range(n) then raise out_of_range_error_message(n)

    if n == 1
      return @FIRST_VALUE
    elsif n == 2
      return @SECOND_VALUE
    else
      return general_term(n - 2) + general_term(n - 1)
    end
  end
end
