class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.string :texto_portugues
      t.string :texto_ingles

      t.timestamps
    end
  end
end
