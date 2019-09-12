class CreateArticles < ActiveRecord::Migration[6.0]
  # this is table of DB
  # t === table, here is where you DEFINE attributes
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
