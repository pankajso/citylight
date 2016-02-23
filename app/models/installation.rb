class Installation < ActiveRecord::Base
  belongs_to :infrastructure
  belongs_to :fitting

  def total_wattage
    self.fitting.wattage * self.quantity
  end

  # Energy consumption calculation
  # The energy E in kilowatt-hours (kWh) per day is equal to the power P in
  # watts (W) times number of usage hours per day t divided by 1000 watts per
  # kilowatt:
  # E(kWh/day) = P(W) × t(h/day) / 1000(W/kW)
  def total_consumption_per_day
    (total_wattage * running_time) / 1000
  end

  def total_consumption_per_month
    total_consumption_per_day * 30
  end

  def total_consumption_per_year
    total_consumption_per_day * 365
  end
end
