class Employee < ApplicationRecord
    belongs_to :dog
    validates :title, presence: true, uniqueness: true 
    validates :alias, presence: true, uniqueness: true 
    def full_name
        "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end
    
    #def exist
       # Employee.all.each do |e|
           # print "hi"
            # if Employee.all.include?(e.alias)
            #     puts "Sorry this alias has been used already!!"
            # elsif Employee.all.include?(e.title)
            #     puts "Title has been taken!!"
            # end
        #end
    #end
end
