class CreateEstudiantes < ActiveRecord::Migration[8.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :carrera
      t.string :carnet

      t.timestamps
    end
    
    add_index :estudiantes, :carnet, unique: true
  end
end
