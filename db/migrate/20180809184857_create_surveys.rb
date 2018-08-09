class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.string  :name
      t.string  :email
      t.integer :guest
      t.string  :event
      t.text    :message
    end
  end
end
