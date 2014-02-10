class CreateCasas < ActiveRecord::Migration
  def change
    create_table :casas do |t|
      t.string :rua
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.date :datainicio
      t.references :proprietario, index: true

      t.timestamps
    end
  end
end
