class RemoveUniqueConstraintFromInvitesIndex < ActiveRecord::Migration
  def up
    remove_index :invites, [:email, :invited_by_id]
    add_index :invites, [:email, :invited_by_id], unique: false
  end

  def down
    remove_index :invites, [:email, :invited_by_id]
    add_index :invites, [:email, :invited_by_id], unique: true
  end
end
