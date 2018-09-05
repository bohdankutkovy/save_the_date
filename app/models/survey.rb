class Survey < ApplicationRecord
  validates_presence_of :name,  message: "Будь-ласка, заповніть своє ім'я!"
  # validates_presence_of :email, message: "Будьлкака, введіть свій email!"
  validates_presence_of :phone_number, message: "Будь-ласка, введіть свій мобільний!"
  validates_presence_of :guest, message: "Виберіть кількість гостей!"
  validates_presence_of :event, message: "Виберість список подій!"

  GUESTS = (1..10).to_a.freeze
  EVENTS = ['Всі заходи', 'Вінчання', 'Вечірку'].freeze

  # validates :guest, inclusion: { in: GUESTS }
  # validates :event, inclusion: { in: EVENTS }
end