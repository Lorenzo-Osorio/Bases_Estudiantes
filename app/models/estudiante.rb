class Estudiante < ApplicationRecord
  validates :nombres,  presence: true, length: { minimum: 2, maximum: 100 }
  validates :apellidos, presence: true, length: { minimum: 2, maximum: 100 }
  validates :carrera,  presence: true, length: { minimum: 2, maximum: 100 }
  validates :carnet,   presence: true, uniqueness: true, length: { minimum: 4, maximum: 30 }
  before_validation :strip_whitespace

  private

  def strip_whitespace
    self.nombres   = nombres.strip   if nombres.respond_to?(:strip)
    self.apellidos = apellidos.strip if apellidos.respond_to?(:strip)
    self.carrera   = carrera.strip   if carrera.respond_to?(:strip)
    self.carnet    = carnet.strip    if carnet.respond_to?(:strip)
  end
end
