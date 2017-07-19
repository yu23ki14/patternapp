class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id, null: false
      t.boolean :no0, default: false
      t.boolean :no1, default: false
      t.boolean :no2, default: false
      t.boolean :no3, default: false
      t.boolean :no4, default: false
      t.boolean :no5, default: false
      t.boolean :no6, default: false
      t.boolean :no7, default: false
      t.boolean :no8, default: false
      t.boolean :no9, default: false
      t.boolean :no10, default: false
      t.boolean :no11, default: false
      t.boolean :no12, default: false
      t.boolean :no13, default: false
      t.boolean :no14, default: false
      t.boolean :no15, default: false
      t.boolean :no16, default: false
      t.boolean :no17, default: false
      t.boolean :no18, default: false
      t.boolean :no19, default: false
      t.boolean :no20, default: false
      t.boolean :no21, default: false
      t.boolean :no22, default: false
      t.boolean :no23, default: false
      t.boolean :no24, default: false
      t.boolean :no25, default: false
      t.boolean :no26, default: false
      t.boolean :no27, default: false
      t.boolean :no28, default: false
      t.boolean :no29, default: false
      t.boolean :no30, default: false
      t.boolean :no31, default: false
      t.boolean :no32, default: false
      t.boolean :no33, default: false
      t.boolean :no34, default: false
      t.boolean :no35, default: false
      t.boolean :no36, default: false
      t.boolean :no37, default: false
      t.boolean :no38, default: false
      t.boolean :no39, default: false

      t.timestamps null: false
    end
  end
end
