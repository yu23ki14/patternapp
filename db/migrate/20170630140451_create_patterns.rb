class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.text :title, null: false
      t.integer :no, null: false
      t.text :name, null: false
      t.text :intro, null: false
      t.text :context, null: false
      t.text :problem, null: false
      t.text :solution, null: false

      t.timestamps null: false
    end
  end
end
