defmodule PrettyInspect.MixProject do
  use Mix.Project

  def project do
    [
      app: :io_color,
      description: "Wrapping your `IO.inspect` and `IO.puts` in vibrant colors since 2018.",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub & Documentation" => "https://github.com/Seiyial/elix_io_color"},
        homepage_url: "https://github.com/Seiyial/elix_io_color"
      ],
      version: "0.2.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: []
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end
end
