require 'date'
class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @status=false
        @created_at=Time.now
        @update_at=nil
    end
    def complete?
    	@status
    end
    def complete!
    	@status=true 
    end 
    def task_id
    	@id
    end
    def make_incomplete!
    	@status=false
    end
    def content
    	@content
    end
    def update_content!(input)
    	@content=input
		@update_at=Time.now
    end

    
end

class TodoList
	attr_reader :tasks
    def initialize user
    	@todo_store = YAML::Store.new("tasks.yml")
        @tasks = []
        @user=user
    end
    def add_task task
    	@tasks.push(task)
    end
    def delete_task id
    	@tasks.delete_if do |task| 
    		task.id==id

    	end
    end
    def find_task_by_id id
    	@tasks.each do |task|
    		if(task.id==id)
    			task.content
    		else
    			puts "not found"
   			end
   		end
    end

    def sort_by_created order
    	if (order=="ASC")
    		@tasks.sort_by{|task| task.created_at}
    	elsif (order=="DESC")
    		
    		@tasks.sort_by{|task| task.created_at}.reverse
    	else 
    		puts "order not found"
    	end
    end
    def save
  		@todo_store.transaction do 
      		@todo_store[@user] = @tasks
      	end
  end
end
end



end 


RSpec.describe "Task test"do
	before :all do
		@task1=Task.new("Buy the milk")
		@task2=Task.new("Buy the coffee")
		@task3=Task.new("Buy the water")
	end
	# let (:classTask){Task.new}
	it "must return complete or not" do
		expect(@task3.complete?).to eq(false)
	end
	it "" do
		expect(@task3.task_id).to eq(3)
	end
	it "" do
		expect(@task1.complete!).to eq(true)
	end

end



# task = Task.new("Buy the milk")
# # puts task.id
# # # 1
# # task2 = Task.new("Wash the car")
# # puts task2.id
# # # 2