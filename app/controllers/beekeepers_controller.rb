class BeekeepersController < ApplicationController
   
   def index 
      @beekeepers = Beekeeper.all
   end
   
   def show
     @beekeeper = Beekeeper.find(params[:id])
   end
   
   def new
     @beekeeper = Beekeeper.new
   end
   
   def create
   
     @beekeeper = Beekeeper.new(beekeeper_params)
		
		if (@beekeeper.save)
		    redirect_to @beekeeper
        else
            render 'new'
        end	   
   end
   
   def edit
      @beekeeper = Beekeeper.find(params[:id])
   end
   
   def update 
     @beekeeper = Beekeeper.find(params[:id])
	 
	 if  @beekeeper.update(beekeeper_params)
	     redirect_to @beekeeper	 
	 else
	     render 'edit'
	 end
   
   end
   
   def destroy
      @beekeeper = Beekeeper.find(params[:id])
	  
	  @beekeeper.destroy
	  redirect_to @beekeepers_path

   end
   
   private
   
   def beekeeper_params
     params.require(:beekeeper).permit(:title,:text,:url1,:url2,:url3,:image, :image1)
      
   end

 end
