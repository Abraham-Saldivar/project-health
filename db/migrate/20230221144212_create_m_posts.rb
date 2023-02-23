class CreateMPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :m_posts do |t|
      t.string :name
      t.string :nickname
      t.integer :dose
      t.datetime :frequency
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
