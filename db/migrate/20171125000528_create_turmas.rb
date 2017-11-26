class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.integer :modulo
      t.time :horario

      t.timestamps
    end
  end
end
