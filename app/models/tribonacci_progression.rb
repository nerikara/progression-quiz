# トリボナッチ数列
class TribonacciProgression < Progression

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 項数加算値
    @term_adder = rand(0..15)
    super(size)
  end

  # 一般項
  # a1 = a2 = 1
  # a3 = 2
  # an = a(n-3) + a(n-2) + a(n-1) (when: n >= 4)
  # @param [Integer] n 添字
  # @return [Integer] n項における値
  def general_term(n)
    if n <= 0 then raise out_of_range_error_message(n)

    if n == 1 || n == 2
      return 1
    elsif n == 3
      return 2
    else
      return general_term(n - 3) + general_term(n - 2) + general_term(n - 1)
    end
  end

  # 数列本体
  # @return [Array] 数列
  def elements
    # [1項目の値, 2項目の値, ... , n項目の値]
    (1..@size).each.map { |n| general_term(n + @term_adder) }
  end
end
