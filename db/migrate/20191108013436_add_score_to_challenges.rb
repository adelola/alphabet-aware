class AddScoreToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :score, :float
  end
end
