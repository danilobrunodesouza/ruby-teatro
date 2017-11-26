class DropTurma < ActiveRecord::Migration[5.1]
  def change
    drop_table :turmas
  end
end
