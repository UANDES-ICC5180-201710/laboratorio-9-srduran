class CreateCoursePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :course_people do |t|
      t.references :course, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
