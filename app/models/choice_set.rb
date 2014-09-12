class ChoiceSet < ActiveRecord::Base
  has_many :choice_rows
  has_many :c_attributes
end
