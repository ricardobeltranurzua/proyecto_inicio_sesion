class Usuario < ApplicationRecord

validates :first_name,
  :last_name, :email_address, :age, presence: { message: "Este campo es requerido."}

validates :first_name, :last_name, 
  length: {minimum: 2, message: "Este campo debe tener minimo 2 caracteres"}

validates :age, numericality: {
  greater_than_or_equal_to: 10,
  less_than_or_equal_to: 150, message: "La edad debe estar entre 10 y 150 años"
}
end
