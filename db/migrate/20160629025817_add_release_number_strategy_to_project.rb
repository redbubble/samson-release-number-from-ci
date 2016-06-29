class AddReleaseNumberStrategyToProject < ActiveRecord::Migration
  def change
    add_column :projects, :release_number_strategy, :string
  end
end
