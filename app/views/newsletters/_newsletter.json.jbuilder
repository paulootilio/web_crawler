json.extract! newsletter, :id, :fonte, :url_noticia, :titulo_noticia, :data_publicacao, :data_coleta, :corpo_noticia, :created_at, :updated_at
json.url newsletter_url(newsletter, format: :json)
