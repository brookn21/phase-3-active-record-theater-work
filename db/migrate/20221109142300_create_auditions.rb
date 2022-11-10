class CreateAuditions < ActiveRecord::Migration[7.0]
  def change
    create_table :auditions do |t|
      t.string      :actor
      t.string      :location
      t.integer     :phone
      t.boolean     :hired, default: false
      t.belongs_to  :role
      t.timestamps
    end
  end
end
