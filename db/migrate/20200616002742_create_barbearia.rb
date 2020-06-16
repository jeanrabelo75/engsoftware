class CreateBarbearia < ActiveRecord::Migration[5.2]
  def change
    create_table :barbearia do |t|
      t.string :nome
      t.text :descricao
      t.text :endereco
      t.integer :capacidade

      t.timestamps
    end
  end
end
