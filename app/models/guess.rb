class Guess < ActiveRecord::Base
  belongs_to :game

  validates :guessed_number, inclusion: {in:Game::RANGE}
end
