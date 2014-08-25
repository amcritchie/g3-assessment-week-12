class Movie < ActiveRecord::Base
  def all

  end
  validates :name, :year, :synopsis, presence: true
  validates :year, numericality: { only_integer: true }
end
