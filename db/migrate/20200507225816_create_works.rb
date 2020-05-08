class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
        t.string :title
        t.string :country
        t.string :century
        t.string :language
        t.string :type_of_work
        t.integer :author_id
        t.integer :genre_id
    end
  end
end
