class UsersGrid < BaseGrid

  scope do
    User
  end

  filter(:first_name, :string)
  filter(:last_name, :string)
  filter(:diet, :string)
  filter(:created_at, :date, :range => true)

  column(:first_name)
  column(:last_name)
  column(:lbg)
  column(:diet)
  column(:year_started)
  column(:year_ended)
  date_column(:created_at)
  date_column(:updated_at)
end
