# 数列クラス
#
# 抽象クラスとして扱いたいため、メソッドは必ず例外をraiseさせ、
# 継承したクラスでオーバーライドさせることを強制する.
class Progression

  attr_reader :size

  def initialize
    # 数列のサイズ
    @size = 5
  end

  # 初項
  def first_term
    raise override_error_message "first_term"
  end

  # 公差
  def tolerance
    raise override_error_message "tolerance"
  end

  # 数列本体
  def elements
    raise override_error_message "elements"
  end

  # オーバーライドされていないときに出力させるエラーメッセージ
  private def override_error_message(method_name)
    return "abstract method: " + method_name + " should be overriden."
  end
end
