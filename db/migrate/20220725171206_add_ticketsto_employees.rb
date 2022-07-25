class AddTicketstoEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :tickets, foreign_key: true
  end
end
