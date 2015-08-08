class StudentsController < ApplicationController
	def index
        @students = Student2.paginate(:page => params[:page], :per_page => 4)
        		#@students =Student2.all
            puts "FRRRRRRR#{@students.inspect}"
	end
	def new
		@student = Student2.new
	end
	def create
 			@student = Student2.new(student_params) 
 			if @student.save
    redirect_to '/students'
  else
    render 'new'
  end
    end
    def edit
    	@student = Student2.find(params[:id])
	end

	def show
    	@student = Student2.find(params[:id])
  	end
  	def update
    	@student = Student2.find(params[:id])
 
    		if @student.update(student_params)
      		redirect_to :action => 'index'
    		else
      		render 'edit'
    end
  end
 
  def destroy
  	@student = Student2.find(params[:id])
    @student.destroy
 
    redirect_to students_path
  end
 

    private 
    def student_params
    	params.require(:student).permit(:student_name, :student_no, :email, :student_detail, :favourite_color, :is_phone_no_enabled,:image)
    end
end
