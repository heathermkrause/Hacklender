class DiaryEntry < ActiveRecord::Base
  attr_accessible :description, :name, :user_name, :mood
  validates :name, presence: true
  validates :mood, :inclusion => { :in => %w(Happy Sad Angry Tired),
    :message => "%{value} is not a valid mood" }
  validates :name, :uniqueness => true
  validate :mood_must_be_happy
end


def mood_must_be_happy
    if mood !="Happy" && (Time.now.monday? || Time.now.thursday?)
      errors.add(:mood_must_be_happy, "Mondays must be happy")
    end
  end



