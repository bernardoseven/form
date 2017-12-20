class AddNumber3ToNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column :numbers, :number3, :string
  end
end
