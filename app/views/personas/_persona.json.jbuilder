json.extract! persona, :id, :nombre, :apellido1, :apellido2, :nacimiento, :ciudad_nacimiento, :confirmacion_nacimiento, :defuncion, :ciudad_defuncion, :confirmacion_defuncion, :bautismo, :parroquia, :confirmacion_bautismo, :created_at, :updated_at
json.url persona_url(persona, format: :json)
