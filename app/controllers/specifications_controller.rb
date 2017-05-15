class SpecificationsController < ApplicationController
   
   def index 
      @specifications = Specification.all
   end
   
   def show
     @specification = Specification.find(params[:id])
   end
   
   def new            
     @specification = Specification.new
   end
   
   def create
   
     @specification = Specification.new(specification_params)
		
		if (@specification.save)
		    redirect_to @specification
        else
            render 'new'
        end	   
   end
   
   def edit
      @specification = Specification.find(params[:id])
   end
   
   def update 
     @specification = Specification.find(params[:id])
	 
	 if  @specification.update(specification_params)
	     redirect_to @specification	 
	 else
	     render 'edit'
	 end
   
   end
   
   def destroy
      @specification = Specification.find(params[:id])
	  
	  @specification.destroy
	  redirect_to @specifications_path

   end
   
   private
   
   def specification_params
     params.require(:specification).permit(:title,:text,:image)
      
   end
end
