defmodule SpWeb.PropertyView do
  use SpWeb, :view

  def capture_features(form, key) do
    checkbox(form, key, checked: false, name: "features[#{key}]")
  end
end
