class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :all_day

      t.timestamps
    end
  end
end
