class CAttribute < ActiveRecord::Base
  belongs_to :choice_set
  has_many :choices
end
