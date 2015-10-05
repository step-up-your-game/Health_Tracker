module Everyday

  def self.everyday
    if self.all>0
      self.order(created_at: :desc).first.values
    else
      ""
    end
  end

end
