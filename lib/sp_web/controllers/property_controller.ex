defmodule SpWeb.PropertyController do
  use SpWeb, :controller

  alias Sp.Data.Properties

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render(conn, "new.html")
  end

  def insert(conn, params) do
    {:ok, available_date} =
      Timex.parse(params["available_date"], "{YYYY}-{0M}-{D}")

    {:ok, inspection_date} =
      Timex.parse(params["inspection_date"], "{YYYY}-{0M}-{D}")

    features = build_features(params)

    params = %{
      suburb: params["suburb"],
      street: params["street"],
      weekly_price: params["weekly_price"],
      available_date: available_date,
      land_size: params["land_size"],
      building_size: params["building_size"],
      rates: params["rates"],
      trata: params["trata"],
      features: features,
      inspection_date: inspection_date,
      insepection_time_from_hour: get_in(params, ["inspection_time_from", "hour"]),
      insepection_time_from_minute: get_in(params, ["inspection_time_from", "minute"]),
      insepection_time_to_hour: get_in(params, ["inspection_time_to", "hour"]),
      insepection_time_to_minute: get_in(params, ["inspection_time_to", "minute"]),
      description: params["description"]}

    with {:ok, property} <- Properties.create(params) do
      {:ok, property}
    end

    redirect(conn, to:  "/")
  end


  # -----------------------------------------------------------------------
  #                               PRIVATE
  # -----------------------------------------------------------------------
  defp build_features(%{
    "features" => features,
    "additional_field" => additional_field
  }) do
    list_1 =
      Enum.reduce(features, [], fn {key, value}, acc ->
        if value, do: acc ++ [key], else: acc
      end)

    list_2 =
      String.split(additional_field, ~r/[,\s\n\t]+/)

    list_1 ++ list_2
  end
end
