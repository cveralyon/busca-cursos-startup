class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :universidad
      t.string :carrera
      t.integer :edad
      t.string :telefono
      t.string :email
      t.float :evaluacion
      t.integer :tipo

      t.timestamps
    end
  end
end
