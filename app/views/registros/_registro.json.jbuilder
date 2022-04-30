json.extract! registro, :id, :pagina_inicio, :pagina_fin, :enlace, :nombre_calle_id, :padron_id, :distrito_id, :created_at, :updated_at
json.url registro_url(registro, format: :json)
