class Step < ActiveRecord::Base
  validates :number, presence: true
end
