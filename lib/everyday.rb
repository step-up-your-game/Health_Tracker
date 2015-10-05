module Everyday

  def self.everyday
    self.order(created_at: :desc).first.values
  end

end
