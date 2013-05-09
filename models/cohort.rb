class Cohort < Database::Model
  

  self.table_name = 'cohorts'

  self.attribute_names =  [:id, :name, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  # e.g., Cohort.new(:id => 1, :name => 'Alpha', :created_at => '2012-12-01 05:54:30')


  def students
    Student.where('cohort_id = ?', self[:id])
  end

  def add_students(students)
    students.each do |student|
      student.cohort = self
    end

    students
  end

end
