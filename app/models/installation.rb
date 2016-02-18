class Installation < ActiveRecord::Base
  belongs_to :infrastructure
  belongs_to :fitting
end
