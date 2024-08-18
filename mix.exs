defmodule App.MixProject do
  use Mix.Project
  # * Describes the Project
  def project do
    # Notice app: :app => this gives a name to your application
    [
      app: :app,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  # * Describes the Application
  # * In contrast, the
  # * dependencies returned by application/0 are runtime dependencies—a list of OTP
  # * applications that need to be started before your own application is started
  def application do
    [
      extra_applications: [:logger],
      # * the description includes the list of other applications you depend on, together with
      # * the module that will be used to start the application :: in this case App.Application
      mod: {App.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  # * Lists the dependencies
  # * The dependencies you return from deps/0 are build-time dependencies.
  # * This information is used by the mix tool to fetch the
  # * dependencies’ source code, compile them together with your project, and create cor-
  # * responding .beam files that are available when you start the system
  defp deps do
    [
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
