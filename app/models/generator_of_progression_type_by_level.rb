# レベルに応じた数列種別を生成するクラス
class GeneratorOfProgressionTypeByLevel

  # レベルに応じた数列種別のリストを生成する
  def generate_progression_type_list_of_level(level)
    case level
    when ProgressionQuizLevel::LEVEL1
      return [ProgressionType::ARITHMETIC_PROGRESSION,
              ProgressionType::GEOMETRIC_PROGRESSION]
    when ProgressionQuizLevel::LEVEL2
      # TODO: レベルに応じた数列種別のリストを生成する
      raise "Undefined"
    when ProgressionQuizLevel::LEVEL3
      # TODO: レベルに応じた数列種別のリストを生成する
      raise "Undefined"
    else
      raise "Undefined"
    end
  end
end
