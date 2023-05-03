class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
