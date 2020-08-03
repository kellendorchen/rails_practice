class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string  "email", :limit => 50, :null => false
      t.column "password", :string, :limit => 30, :null => false
      # :default =>  value
      #Ex:- :default =>''
      t.timestamps
    end
  end
  def def down 
    drop_table :users
  end
end
