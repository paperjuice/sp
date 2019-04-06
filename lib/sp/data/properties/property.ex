defmodule Sp.Data.Property do
  use Ecto.Schema
  import Ecto.Changeset

  schema "properties" do
    field(:suburb, :string)
    field(:street, :string)
    field(:weekly_price, :integer)
    field(:available_date, :utc_datetime)
    field(:land_size, :integer)
    field(:building_size, :integer)
    field(:rates, :string)
    field(:trata, :string)
    field(:features, {:array, :string})
    field(:inspection_date, :utc_datetime)
    field(:insepection_time_from_hour, :integer)
    field(:insepection_time_from_minute, :integer)
    field(:insepection_time_to_hour, :integer)
    field(:insepection_time_to_minute, :integer)
    field(:description, :string)
  end

  @required []

  @optional [
    :suburb,
    :street,
    :weekly_price,
    :available_date,
    :land_size,
    :building_size,
    :rates,
    :trata,
    :features,
    :inspection_date,
    :insepection_time_from_hour,
    :insepection_time_from_minute,
    :insepection_time_to_hour,
    :insepection_time_to_minute,
    :description
  ]

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @optional ++ @required)
  end
end
