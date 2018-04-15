class PokemonsController < ApplicationController
      def index
            @pokemons = Pokemon.all
      end
    
      def show
            #show the instance of pokemon 
            @pokemon = Pokemon.find(params[:id])
      end
    
      def new
            @pokemon = Pokemon.new
      end
    
      def edit
            @pokemon = Pokemon.find(params[:id])
      end
    
      def create
            #render plain: params[:pokemon].inspect
            # create a new instance of pokemon with the params in the form
            @pokemon = Pokemon.new(pokemon_params)

            #save the instance
            if (@pokemon.save)
                  redirect_to @pokemon
            else
                  render 'new'
            end
      end
    
      def update
            @pokemon = Pokemon.find(params[:id])

            #save the instance
            if (@pokemon.update(pokemon_params))
                  redirect_to @pokemon
            else
                  render 'edit'
            end
      end
    
      def destroy
            @pokemon = Pokemon.find(params[:id])
            @pokemon.destroy

            redirect_to pokemons_path
      end

      private
      def pokemon_params
            #allow the params to go through
      params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
      end
end
