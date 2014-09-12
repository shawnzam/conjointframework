class Option < ActiveRecord::Base
  belongs_to :c_attribute
  belongs_to :choice
end
