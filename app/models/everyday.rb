module Everyday

  def everyday
    if self.count>0
      self.order(created_at: :desc).first.attributes
    else
      "None"
    end
  end

end
