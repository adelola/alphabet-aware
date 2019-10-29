class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.date :date
      t.string :type
      t.text :note
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
