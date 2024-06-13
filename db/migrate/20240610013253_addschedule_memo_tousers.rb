class AddscheduleMemoTousers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :schedule_memo, :string
  end
end
