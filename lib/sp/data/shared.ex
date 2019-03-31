defmodule Sp.Data.Shared do

  def handle_errors(resp),
    do: do_handle_errors(resp)


  # -----------------------------------------------------------------------
  #                               PRIVATE
  # -----------------------------------------------------------------------
  defp do_handle_errors({:error, _}),
    do: {:error, "Failure"}

  defp do_handle_errors({:ok, struct}),
    do: {:ok, struct}
end
