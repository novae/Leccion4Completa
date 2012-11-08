class CreateDetalleEjercicios < ActiveRecord::Migration
  def change
    create_table :detalle_ejercicios do |t|
      t.integer :IdModulo
      t.integer :Ejercicio
      t.integer :Orden
      t.string :Linea

      t.timestamps
    end
  end
end
