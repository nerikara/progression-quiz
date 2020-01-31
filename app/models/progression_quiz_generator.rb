# 数列クイズを生成する
class ProgressionQuizGenerator

  # 数列クイズを生成する
  #
  # @param [Progression] progression 数列
  def generate(progression)
    return ProgressionQuiz.new(progression)
  end
end
