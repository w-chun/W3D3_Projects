class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.integer :course_id, NULL: false
      t.integer :student_id, NULL: false

      t.timestamps
    end
  end
end
