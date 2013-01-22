class DiaryEntry < ActiveRecord::Base
  attr_accessible :description, :name, :user_name
end
