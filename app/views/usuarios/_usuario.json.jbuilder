json.extract! usuario, :id, :rut, :nombre, :fecha_nac, :sexo, :telefono, :email, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
