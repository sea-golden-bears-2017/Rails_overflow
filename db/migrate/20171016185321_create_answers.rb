class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :description,null: false
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end


post_path(@post)
