class CreateRError < ActiveRecord::Migration[7.1]
  def change
    create_table :r_errors do |t|
      t.text :error
      t.string :severity
      t.text :context

      t.timestamps
    end
  end
end
