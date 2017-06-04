class ResumesController < ApplicationController
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end
   
   def create
   	  params[:resume][:user_id] = current_user.id
      @resume = Resume.new(resume_params)
      
      if @resume.save
         redirect_to resumes_path, notice: "The resume #{@resume.user_id} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "The resume #{@resume.user_id} has been deleted."
   end
   
   private
      def resume_params
      params.require(:resume).permit(:user_id, :attachment)
   end
   
end