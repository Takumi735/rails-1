class User < ApplicationRecord
  validates :title, presence: true, length: {maximum:20}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :schedule_memo, length: {maximum: 500}

  validate :start_date_before_end_date
  private

  def start_date_before_end_date
    if start_date.present? && end_date.present? && start_date > end_date
      errors.add(:start_date, "は終了日より前に設定してください")
    end
  end
end
