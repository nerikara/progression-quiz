class ProgressionController < ApplicationController

  def home
    session.delete(:correct_answer_count)
    session.delete(:question_count)
  end

  def quiz
    @correct_answer_count = session[:correct_answer_count].to_i
    @question_count = session[:question_count].to_i

    progression_generator = ProgressionGenerator.new()
    @progression_type = params[:progression_type].to_i
    progression = progression_generator.generate(@progression_type)

    progression_quiz_generator = ProgressionQuizGenerator.new()
    all_values = progression_quiz_generator.generate(progression).values
    @hidden_value = all_values.pop
    @displayed_values = all_values
  end

  def answer
    # 出題数を更新
    if session[:question_count].nil?
      session[:question_count] = 1
    elsif
      session[:question_count] += 1
    end

    # 規定の出題数達成したら結果へのリンクを生成する
    if session[:question_count] == 10
      next_link = "/result"
    else
      progression_type = params[:progression_type].to_i
      next_link = "/quiz/#{progression_type}"
    end

    answer = params[:answer].to_i
    hidden_value = params[:hidden_value].to_i
    if answer == hidden_value
      # 正答数を更新
      if session[:correct_answer_count].nil?
        session[:correct_answer_count] = 1
      elsif
        session[:correct_answer_count] += 1
      end
      redirect_to(next_link, flash: { right: "正解！" })
    else
      redirect_to(next_link, flash: { wrong: "不正解..." })
    end
  end

  def result
    @question_count = session[:question_count]
    @correct_answer_count = session[:correct_answer_count]
  end
end
