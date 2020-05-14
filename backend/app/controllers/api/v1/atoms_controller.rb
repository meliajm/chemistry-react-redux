class Api::V1::AtomsController < ApplicationController
  before_action :set_atom, only: [:show, :update, :destroy]

  # GET /atoms
  def index
    @atoms = Atom.all

    render json: @atoms
  end

  # GET /atoms/1
  def show
    render json: @atom
  end

  # POST /atoms
  def create
    @atom = Atom.new(atom_params)

    if @atom.save
      render json: @atom, status: :created
    else
      render json: @atom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /atoms/1
  def update
    if @atom.update(atom_params)
      render json: @atom
    else
      render json: @atom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /atoms/1
  def destroy
    @atom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atom
      @atom = Atom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def atom_params
      params.require(:atom).permit(:atomic_number, :symbol, :name, :atomic_mass, :cpk_hex_color, :electron_configuration, :electronegativity, :atomic_radius, :ionization_energy, :electron_affinity, :oxidation_states, :state_state, :melting_point, :boiling_point, :density, :group_block, :year_discovered)
    end
end
