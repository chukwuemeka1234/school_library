class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class BaseDecorator < Namable
  attr_accessor :namable

  def initialize(namable)
    super()
    @namable = namable
  end

  def correct_name
    @namable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @namable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.length > 10 ? @nameable.correct_name[0..9] : @nameable.correct_name
  end
end
