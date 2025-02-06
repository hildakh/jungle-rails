class Sale < ActiveRecord::Base
  validates :ends_on, :starts_on, presence: true
  validate :end_date_after_start_date

  def self.active
    where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
  end

  def finished?
    ends_on < Date.current
  end

  def upcoming?
    starts_on > Date.current
  end

  def active?
    !upcoming? && !finished?
  end

  def end_date_after_start_date
    return unless starts_on && ends_on
    if ends_on <= starts_on
      errors.add(:ends_on, "must be after the start date")
    end
  end
end
