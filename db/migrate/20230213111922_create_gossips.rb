class CreateGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :gossips do |t| 
      t.string :title
      t.text :context
      t.references :user, index: true

      t.timestamps
    end
  end
end
