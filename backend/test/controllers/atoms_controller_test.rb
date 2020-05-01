require 'test_helper'

class AtomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atom = atoms(:one)
  end

  test "should get index" do
    get atoms_url, as: :json
    assert_response :success
  end

  test "should create atom" do
    assert_difference('Atom.count') do
      post atoms_url, params: { atom: { atomic_mass: @atom.atomic_mass, atomic_number: @atom.atomic_number, atomic_radius: @atom.atomic_radius, boiling_point: @atom.boiling_point, cpk_hex_color: @atom.cpk_hex_color, density: @atom.density, electron_affinity: @atom.electron_affinity, electron_configuration: @atom.electron_configuration, electronegativity: @atom.electronegativity, group_block: @atom.group_block, ionization_energy: @atom.ionization_energy, melting_point: @atom.melting_point, name: @atom.name, oxidation_states: @atom.oxidation_states, state_state: @atom.state_state, symbol: @atom.symbol, year_discovered: @atom.year_discovered } }, as: :json
    end

    assert_response 201
  end

  test "should show atom" do
    get atom_url(@atom), as: :json
    assert_response :success
  end

  test "should update atom" do
    patch atom_url(@atom), params: { atom: { atomic_mass: @atom.atomic_mass, atomic_number: @atom.atomic_number, atomic_radius: @atom.atomic_radius, boiling_point: @atom.boiling_point, cpk_hex_color: @atom.cpk_hex_color, density: @atom.density, electron_affinity: @atom.electron_affinity, electron_configuration: @atom.electron_configuration, electronegativity: @atom.electronegativity, group_block: @atom.group_block, ionization_energy: @atom.ionization_energy, melting_point: @atom.melting_point, name: @atom.name, oxidation_states: @atom.oxidation_states, state_state: @atom.state_state, symbol: @atom.symbol, year_discovered: @atom.year_discovered } }, as: :json
    assert_response 200
  end

  test "should destroy atom" do
    assert_difference('Atom.count', -1) do
      delete atom_url(@atom), as: :json
    end

    assert_response 204
  end
end
