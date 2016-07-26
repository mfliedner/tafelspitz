class AddReviewNickname < ActiveRecord::Migration
  def change
    add_column :reviews, :nick_name, :string
  end
end
