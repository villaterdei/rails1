json.extract! cuestionario, :id, :fecha, :hora, :pregunta, :created_at, :updated_at
json.url cuestionario_url(cuestionario, format: :json)
