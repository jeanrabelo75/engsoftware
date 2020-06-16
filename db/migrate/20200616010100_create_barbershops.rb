class CreateBarbershops < ActiveRecord::Migration[5.2]
  def change
    create_table :barbershops do |t|
      t.string :nome
      t.text :endereco
      t.integer :capacidade

      t.timestamps
    end
  end
end
