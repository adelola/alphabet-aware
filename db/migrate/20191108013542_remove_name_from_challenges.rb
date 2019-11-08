class RemoveNameFromChallenges < ActiveRecord::Migration[5.1]
  def change
    remove_column :challenges, :name, :string
  end
end
