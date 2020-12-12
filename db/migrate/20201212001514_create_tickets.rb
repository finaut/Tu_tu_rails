class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :train, index: true
      t.references :route, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
