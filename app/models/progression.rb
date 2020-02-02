# 数列クラス
#
# 抽象クラスとして扱いたいため、メソッドは必ず例外をraiseさせ、
# 継承したクラスでオーバーライドさせることを強制する.
class Progression

  attr_reader :first_term, :tolerance, :size

  # コンストラクタ
  # @param[Integer] first_term 初項
  # @param[Any] tolerance 公差
  # @param[Integer] size 数列のサイズ
  def initialize(first_term, tolerance, size)
    # 初項
    @first_term = first_term

    # 公差
    @tolerance = tolerance

    # 数列のサイズ
    @size = size
  end

  # 数列本体
  def elements
    raise override_error_message "elements"
  end

  # メソッドがオーバーライドされていないときに出力されるエラーメッセージを生成する
  # @param [String] method_name オーバーライドされていないメソッド名
  # @return [String] エラーメッセージ
  private def override_error_message(method_name)
    return "abstract method: " + method_name + " should be overriden."
  end
end
