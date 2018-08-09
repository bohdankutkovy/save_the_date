class Survey < ApplicationRecord
  validates :name, :email, :guest, :event, presence: true

  GUESTS = [1, 2, 3, 4]
  EVENTS = ['All', 'Church', 'Party']

  validates :guest, inclusion: { in: GUESTS }
  validates :event, inclusion: { in: EVENTS }
end