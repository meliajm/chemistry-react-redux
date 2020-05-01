class CreateAtoms < ActiveRecord::Migration[6.0]
  def change
    create_table :atoms do |t|
      t.string :atomic_number
      t.string :symbol
      t.string :name
      t.string :atomic_mass
      t.string :cpk_hex_color
      t.string :electron_configuration
      t.string :electronegativity
      t.string :atomic_radius
      t.string :ionization_energy
      t.string :electron_affinity
      t.string :oxidation_states
      t.string :state_state
      t.string :melting_point
      t.string :boiling_point
      t.string :density
      t.string :group_block
      t.string :year_discovered

      t.timestamps
    end
  end
end
