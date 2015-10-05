class Weight < ActiveRecord::Base
  validate :validate_first_entry_of_the_day
  def self.weight
    if Weight.all > 0
      Weight.order(created_at: :desc).first.weight
    else
      "???"
    end
  end

  private def validate_first_entry_of_the_day
    errors.add(:weight, "Entry already exists for today") if Weight.where(['created_at > ?', DateTime.now.beginning_of_day]).exists?
  end

end
