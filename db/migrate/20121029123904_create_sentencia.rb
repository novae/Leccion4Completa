class CreateSentencia < ActiveRecord::Migration
  def change
    create_table :sentencia do |t|
      t.integer :id
      t.string :sentencia

      t.timestamps
    end
  end
end
