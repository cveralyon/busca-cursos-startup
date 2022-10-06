json.extract! usuario, :id, :nombre, :universidad, :carrera, :edad, :telefono, :email, :evaluacion, :tipo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
