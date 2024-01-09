class CreateRError < ActiveRecord::Migration[7.1]
  def change
    create_table :r_errors do |t|
      t.string :title
      t.string :controller
      t.string :action
      t.string :route
      t.string :status

      t.timestamps
    end
  end
end
