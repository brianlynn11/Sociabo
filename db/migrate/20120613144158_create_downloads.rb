class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :contact

      t.timestamps
    end
  end
end
