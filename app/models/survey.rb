class Survey < ApplicationRecord
  validates_presence_of :name,  message: "Будьласка, заповніть своє ім'я!"
  validates_presence_of :email, message: "Будьлкака, введіть свій email!"
  validates_presence_of :guest, message: "Виберіть кількість гостей!"
  validates_presence_of :event, message: "Виберість список подій!"

  GUESTS = [1, 2, 3, 4]
  EVENTS = ['Всі заходи', 'Вінчання', 'Вечірку']

  # validates :guest, inclusion: { in: GUESTS }
  # validates :event, inclusion: { in: EVENTS }
end