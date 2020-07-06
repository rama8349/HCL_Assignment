class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :name

      t.timestamps
    end
  end
end
