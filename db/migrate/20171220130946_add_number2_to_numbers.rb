class AddNumber2ToNumbers < ActiveRecord::Migration[5.1]
  def change
    add_column :numbers, :number2, :string
  end
end
