class AddContextToHome < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :context, :text
  end
end
