class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :fonte
      t.string :url_noticia
      t.string :titulo_noticia
      t.datetime :data_publicacao
      t.datetime :data_coleta
      t.string :corpo_noticia

      t.timestamps
    end
  end
end
