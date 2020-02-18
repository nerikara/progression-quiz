# 数列クイズのクラス
class ProgressionQuiz

  attr_reader :shown_values, :hidden_value

  # コンストラクタ
  #
  # @param [Progression] progression 数列
  def initialize(progression)
    all_values = progression.elements

    # 表示用の要素
    @shown_values = all_values[0..-2]

    # 答え
    @hidden_value = all_values[-1]
  end
end
