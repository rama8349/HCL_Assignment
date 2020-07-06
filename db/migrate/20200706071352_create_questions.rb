class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.string :teaming_stages
      t.integer :appears
      t.integer :frequency
      t.string :q_type
      t.integer :role_id
      t.boolean :required
      t.string :conditions
      t.string :mapping

      t.timestamps
    end
  end
end
