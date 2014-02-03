class CreateProprietarios < ActiveRecord::Migration
  def change
    create_table :proprietarios do |t|
      t.string :nome
      t.integer :idade
      t.string :sexo
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :cpf

      t.timestamps
    end
  end
end
