class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  #change method is how we're going to update the table
  # use add_column
  # 1) give the table name = articles
  # 2) give attributes = description
  # 3) type for attr name = text
  def change
    add_column :articles, :description, :text 
  end
end
