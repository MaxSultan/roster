class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :grade
      t.string :win_loss
      t.boolean :injured
      t.string :phone
      t.belongs_to :weight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
