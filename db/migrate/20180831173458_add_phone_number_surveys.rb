class AddPhoneNumberSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :phone_number, :string
  end
end
