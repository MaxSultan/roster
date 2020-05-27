class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.string :weight_class
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
