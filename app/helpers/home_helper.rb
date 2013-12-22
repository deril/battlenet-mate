module HomeHelper
  def hero_class(hero)
    gender = hero['gender'].zero? ? 'male' : 'female'

    "#{hero['class']}-#{gender}"
  end
end
