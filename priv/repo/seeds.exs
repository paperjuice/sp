alias Sp.Data.Properties

Application.ensure_all_started(:sp)

record_params = [
  %{
    suburb: "Darlinghurst",
    street: "Fancybow",
    weekly_price: 400,
    available_date: Timex.now(),
    land_size: 500,
    building_size: 300,
    rates: "-",
    trata: "-",
    features: ["air_conditioning_heating", "built_in_wardrobes", "close_to_schools"],
    inspection_date: Timex.now(),
    insepection_time_from_hour: 10,
    insepection_time_from_minute: 30,
    insepection_time_to_hour: 11,
    insepection_time_to_minute: 0,
    description: "Recently reconfigured this ideal terrace home will suite the executive who works longs hours in Sydney CBD and enjoy this low maintenance home on the weekends."
  },
  %{
    suburb: "Darlinghurst",
    street: "Fancybow",
    weekly_price: 400,
    available_date: Timex.now(),
    land_size: 500,
    building_size: 300,
    rates: "-",
    trata: "-",
    features: ["air_conditioning_heating", "built_in_wardrobes", "close_to_schools"],
    inspection_date: Timex.now(),
    insepection_time_from_hour: 10,
    insepection_time_from_minute: 30,
    insepection_time_to_hour: 11,
    insepection_time_to_minute: 0,
    description: "Recently reconfigured this ideal terrace home will suite the executive who works longs hours in Sydney CBD and enjoy this low maintenance home on the weekends."
  }
]

Enum.each(record_params, &Properties.create&1)
