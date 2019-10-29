class CreateCorrectAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :correct_answers do |t|
      t.string :letter
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
