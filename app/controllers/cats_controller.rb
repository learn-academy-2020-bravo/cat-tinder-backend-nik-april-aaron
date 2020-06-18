class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end
  
    def create
        # Create a new cat
        cat = Cat.create(cat_params)
    
        # respond with our new cat
        render json: cat
      end
    
      # Handle strong parameters, so we are secure
      def cat_params
        params.require(:cat).permit(:name, :age, :enjoys)
    end

    def create
        cat = Cat.create(cat_params)
        if cat.valid?
          render json: cat
         else
           render json: cat.errors, status: :unprocessable_entity
         end
    end
end
