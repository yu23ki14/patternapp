class RemoveDatesFromPatterns < ActiveRecord::Migration
  def change
    remove_column :patterns, :created_at, :datetime
    remove_column :patterns, :updated_at, :datetime
  end
end
