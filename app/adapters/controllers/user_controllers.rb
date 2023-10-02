# frozen_string_literal: true

require './app/usecases/users/create'
# Controler de Usuário
class UserController
  def self.create(params)
    Users::Create.new(params:).call
  end
end
