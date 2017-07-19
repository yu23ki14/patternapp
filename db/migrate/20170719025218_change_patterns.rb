class ChangePatterns < ActiveRecord::Migration
  def change
    remove_column :patterns, :intro, :text
    remove_column :patterns, :context, :text
    remove_column :patterns, :problem, :text
  end
end
