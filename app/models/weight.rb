class Weight < ActiveRecord::Base

def self.weight
  Weight.order('created_at').last.weight
end

end
