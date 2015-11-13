class Game < ActiveRecord::Base
  RANGE = 1..100
  has_many :guesses

  before_validation :generate_target_number
  validates :target_number, inclusion: {in: RANGE}

  def double_target_number
    target_number * 2
  end

  private

  def generate_target_number
    self.target_number ||= rand(RANGE)
  end

end
