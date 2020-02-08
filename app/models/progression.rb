# 数列クラス
#
# 抽象クラスとして扱いたいため、抽象メソッドは必ず例外をraiseさせ、
# 継承したクラスでオーバーライドすることを強制する.
class Progression

  attr_reader :size

  # コンストラクタ
  # @param [Integer] size 数列のサイズ
  def initialize(size)
    # 数列のサイズ
    @size = size
  end

  # 一般項
  # 任意の添字nを与えたとき、n項目の数値を返す
  # 子クラスに実装を強制させるため、実装していない場合は例外を発生させる
  # @param [Integer] n 項
  # @raise 未オーバーライドエラー
  def general_term(n)
    raise override_error_message "general_term"
  end

  # 項が範囲内かどうか
  # @param[Integer] term 項
  # @return[true, false] 0より大きければtrue, それ以外はfalse
  protected def is_term_in_range(term)
    return term > 0
  end

  # 数列本体
  # @return [Array] 数列
  def elements
    # [1項目の値, 2項目の値, ... , n項目の値]
    (1..@size).each.map { |n| general_term(n) }
  end

  # メソッドがオーバーライドされていないときに出力されるエラーメッセージを生成する
  # @param [String] method_name オーバーライドされていないメソッド名
  # @return [String] エラーメッセージ
  private def override_error_message(method_name)
    return "abstract method: " + method_name + " should be overriden."
  end

  # 参照された数列の項数が範囲外である場合のエラーメッセージを返す
  # @param [Integer] term 項
  # @return [String] エラーメッセージ
  protected def out_of_range_error_message(term)
    return "Term '#{term.to_s}' is out of range."
  end
end
