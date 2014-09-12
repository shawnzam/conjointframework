class Choice < ActiveRecord::Base
  belongs_to :choice_row
  has_many :options
end
