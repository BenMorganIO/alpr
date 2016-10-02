defmodule Alpr.Mixfile do
  use Mix.Project

  def project do
    [
      app: :alpr,
      version: "0.0.0",
      # elixir: "v1.13.2",
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, github: "elixir-lang/ex_doc"}]
  end

  defp description do
    """
    A few sentences (a paragraph) describing the project.
    """
  end

  defp package do
    [
      name: :alpr,
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Ben A. Morgan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/BenMorganIO/alpr"}
    ]
  end
end
