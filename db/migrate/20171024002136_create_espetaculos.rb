class CreateEspetaculos < ActiveRecord::Migration[5.1]
  def change
    create_table :espetaculos do |t|
      t.string :nome
      t.integer :atores
      t.integer :diretor
      t.integer :sonoplasta
      t.integer :iluminador

      t.timestamps
    end
  end
end
