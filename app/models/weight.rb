require 'everyday'
class Weight < ActiveRecord::Base
  validate :validate_first_entry_of_the_day
  include Everyday
  def self.weight
    Weight.order(created_at: :desc).first.weight
  end

  private def validate_first_entry_of_the_day
    errors.add(:weight, "Entry already exists for today") if Weight.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
  end

end
