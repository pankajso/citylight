class Infrastructure < ActiveRecord::Base
  has_many :installations, dependent: :destroy
  has_many :fittings, through: :installations

  validates :area, presence: { message: 'Please provide a area' }

end
