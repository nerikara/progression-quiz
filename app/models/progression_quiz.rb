# 数列クイズのクラス
class ProgressionQuiz

  attr_reader :values, :target_index

  # コンストラクタ
  #
  # @param [Progression] progression 数列
  def initialize(progression)
    # 数列
    @values = progression.elements

    # 隠された数列の項数(0オリジン)
    @target_index = progression.SIZE - 1
  end
end
