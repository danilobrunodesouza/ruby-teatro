class Registro < ApplicationRecord
    enum titulo: [:artistico, :pedagogico, :difusao]
    enum tipo: [:entrada, :saida]
end
