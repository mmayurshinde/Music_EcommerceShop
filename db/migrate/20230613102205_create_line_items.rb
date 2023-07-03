class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
    	# t.string :instrument
    	t.references :instrument, foreign_key: true
        t.belongs_to :cart, foreign_key: true

      t.timestamps
    end
  end
end
# class CreateLineItems < ActiveRecord::Migration[7.0]
#   def change
#     create_table :line_items do |t|
#       
#       t.references :null: false, foreign_key: true
#       t.string :cart
#       t.belongs_to :null: false, foreign_key: true

#       t.timestamps
#     end
#   end
# end
