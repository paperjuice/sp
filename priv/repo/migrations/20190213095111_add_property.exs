defmodule Sp.Repo.Migrations.AddProperty do
  use Ecto.Migration

  def change do
    create table(:properties) do
      add(:suburb, :string)
      add(:street, :string)
      add(:weekly_price, :integer)
      add(:available_date, :naive_datetime)
      add(:land_size, :integer)
      add(:building_size, :integer)
      add(:rates, :string)
      add(:trata, :string)
      add(:features, {:array, :string})
      add(:inspection_date, :naive_datetime)
      add(:insepection_time_from_hour, :integer)
      add(:insepection_time_from_minute, :integer)
      add(:insepection_time_to_hour, :integer)
      add(:insepection_time_to_minute, :integer)
      add(:description, :text)
    end
  end
end
