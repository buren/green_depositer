class AddUserIdToDeposits < ActiveRecord::Migration[5.0]
  def change
    add_reference :deposits, :user, foreign_key: true
  end
end
