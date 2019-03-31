defmodule Sp.Data.Properties do
  alias Sp.Repo

  alias Sp.Data.Property

  def create(params \\ %{}) do
    %Property{}
    |> Property.changeset(params)
    |> Repo.insert()
  end
end
