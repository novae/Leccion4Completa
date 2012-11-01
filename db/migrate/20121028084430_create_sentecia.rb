class CreateSentecia < ActiveRecord::Migration
  def change
    create_table :sentecia do |t|
      t.integer :id
      t.string :palabras

      t.timestamps
    end
  end
end
