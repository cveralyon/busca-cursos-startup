class CreateClases < ActiveRecord::Migration[7.0]
  def change
    create_table :clases do |t|
      t.string :titulo
      t.float :duracion
      t.float :precio
      t.string :contenidos
      t.string :requisitos
      t.string :modalidad
      t.float :evaluacion

      t.timestamps
    end
  end
end
