class CreateRegistros < ActiveRecord::Migration[5.1]
  def change
    create_table :registros do |t|
      t.date :dia
      t.integer :titulo
      t.string :descricao
      t.integer :tipo
      t.decimal :valor, precision: 8, scale: 2

      t.timestamps
    end
  end
end
