# 階差数列クラス
class DifferenceProgression < Progression

  # コンストラクタ
  # @param [Progression] tolerance_progression 階差数列の公差に使用する数列
  # @param[Integer] size 数列のサイズ
  def initialize(tolerance_progression, size)
    first_term = rand(1..10) * [-1, 1].sample
    super(first_term, tolerance_progression, size)
  end

  # 公差
  # 階差数列の公差は、ベースとなる数列の総和(a1 + a2 + ... + an)
  # @param [Integer] n 数列のサイズ
  # @return [Integer] 数列の総和
  def tolerance(n)
    if n == 0
      return @tolerance.elements[0]
    else
      return @tolerance.elements[n] + tolerance(n - 1)
    end
  end

  # 数列本体
  # @return [Array] 数列そのもの
  def elements
    progression = []
    @size.times do |i|
      if i == 0
        progression.push(@first_term)
      else
        progression.push(@first_term + tolerance(i - 1))
      end
    end
    return progression
  end
end
