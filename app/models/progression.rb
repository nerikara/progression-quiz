# 数列クラス
#
# 抽象クラスとして扱いたいため、抽象メソッドは必ず例外をraiseさせ、
# 継承したクラスでオーバーライドすることを強制する.
class Progression

  attr_reader :first_term, :tolerance, :size

  # コンストラクタ
  # @param[Integer] size 数列のサイズ
  def initialize(size)
    # 数列のサイズ
    @size = size
  end

  # 一般項
  # 任意の添字nを与えたとき、n項目の数値を返す
  # @param [Integer] n 添字
  # @return [Integer] n項目の数値
  def general_term(n)
    raise override_error_message "general_term"
  end

  # 数列本体
  # @return [Array] 数列
  def elements
    (1..@size).each.map { |i| general_term(i) }
  end

  # メソッドがオーバーライドされていないときに出力されるエラーメッセージを生成する
  # @param [String] method_name オーバーライドされていないメソッド名
  # @return [String] エラーメッセージ
  private def override_error_message(method_name)
    return "abstract method: " + method_name + " should be overriden."
  end
end
