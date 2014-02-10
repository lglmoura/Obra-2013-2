class CreateCasafuncionarios < ActiveRecord::Migration
  def change
    create_table :casafuncionarios do |t|
      t.references :casa, index: true
      t.references :funcionario, index: true
      t.date :dataentrada
      t.date :datasaida

      t.timestamps
    end
  end
end
