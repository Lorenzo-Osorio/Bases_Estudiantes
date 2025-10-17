require "test_helper"

class EstudianteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  class EstudianteTest < ActiveSupport::TestCase
  test "valid estudiante" do
    e = Estudiante.new(nombres: "Juan", apellidos: "Lopez", carrera: "Medicina", carnet: "C123")
    assert e.valid?
  end
  test "carnet uniqueness" do
    Estudiante.create!(nombres: "A", apellidos: "B", carrera: "C", carnet: "UNIQ1")
    e2 = Estudiante.new(nombres: "X", apellidos: "Y", carrera: "Z", carnet: "UNIQ1")
    assert_not e2.valid?
  end

end
