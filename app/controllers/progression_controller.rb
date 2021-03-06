class ProgressionController < ApplicationController

  def home
    clear_flash
    session.delete(:correct_answer_count)
    session.delete(:question_count)
  end

  def quiz
    @correct_answer_count = session[:correct_answer_count].to_i
    @question_count = session[:question_count].to_i

    # 数列クイズを生成
    @level = params[:level].to_i
    # TODO: 数列のサイズを難易度によって変更する
    size = 6
    progression_quiz_generator = ProgressionQuizGenerator.new()
    progression_quiz = progression_quiz_generator.generate(level: @level, size: size)
    @shown_values = progression_quiz.shown_values
    @hidden_value = progression_quiz.hidden_value
  end

  def answer
    # 出題数を更新
    session[:question_count] ||= 0
    session[:question_count] += 1

    # 規定の出題数達成したら結果へのリンクを生成する
    if session[:question_count] == 10
      next_link = "/result"
    else
      level = params[:level].to_i
      next_link = "/quiz/#{level}"
    end

    answer = params[:answer].to_i
    hidden_value = params[:hidden_value].to_i
    if answer == hidden_value
      # 正答数を更新
      session[:correct_answer_count] ||= 0
      session[:correct_answer_count] += 1
      redirect_to(next_link, flash: { right: "正解！" })
    else
      redirect_to(next_link, flash: { wrong: "不正解..." })
    end
  end

  def result
    clear_flash
    @question_count = session[:question_count]
    @correct_answer_count = session[:correct_answer_count] || 0
  end

  private

  def clear_flash
    flash[:right] = nil
    flash[:wrong] = nil
  end
end
