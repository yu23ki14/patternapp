class RemoveNumbersfromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :no0, :boolean
    remove_column :questions, :no1, :boolean
    remove_column :questions, :no2, :boolean
    remove_column :questions, :no3, :boolean
    remove_column :questions, :no4, :boolean
    remove_column :questions, :no5, :boolean
    remove_column :questions, :no6, :boolean
    remove_column :questions, :no7, :boolean
    remove_column :questions, :no8, :boolean
    remove_column :questions, :no9, :boolean
    remove_column :questions, :no10, :boolean
    remove_column :questions, :no11, :boolean
    remove_column :questions, :no12, :boolean
    remove_column :questions, :no13, :boolean
    remove_column :questions, :no14, :boolean
    remove_column :questions, :no15, :boolean
    remove_column :questions, :no16, :boolean
    remove_column :questions, :no17, :boolean
    remove_column :questions, :no18, :boolean
    remove_column :questions, :no19, :boolean
    remove_column :questions, :no20, :boolean
    remove_column :questions, :no21, :boolean
    remove_column :questions, :no22, :boolean
    remove_column :questions, :no23, :boolean
    remove_column :questions, :no24, :boolean
    remove_column :questions, :no25, :boolean
    remove_column :questions, :no26, :boolean
    remove_column :questions, :no27, :boolean
    remove_column :questions, :no28, :boolean
    remove_column :questions, :no29, :boolean
    remove_column :questions, :no30, :boolean
    remove_column :questions, :no31, :boolean
    remove_column :questions, :no32, :boolean
    remove_column :questions, :no33, :boolean
    remove_column :questions, :no34, :boolean
    remove_column :questions, :no35, :boolean
    remove_column :questions, :no36, :boolean
    remove_column :questions, :no37, :boolean
    remove_column :questions, :no38, :boolean
    remove_column :questions, :no39, :boolean
    
    add_column :questions, :no, :integer
    add_column :questions, :bool, :boolean
  end
end
