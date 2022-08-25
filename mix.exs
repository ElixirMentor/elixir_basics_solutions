defmodule ElixirBasicsSolutions.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_basics_solutions,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # Docs
      name: "Elixir Basics Solutions",
      source_url: "https://github.com/jacobluetzow/elixir_basics_solutions",
      homepage_url: "https://linktr.ee/jacob_luetzow",
      docs: [
        main: "Elixir Basics Solutions",
        logo: "assets/images/bs_logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
end
