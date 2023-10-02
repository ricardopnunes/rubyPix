# frozen_string_literal: true

# Classe de user que representa tabela no banco
class User
  attr_accessor :name

  def initialize(name:)
    @name = name
  end
end
