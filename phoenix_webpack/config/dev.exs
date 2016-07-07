use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
config :phoenix_webpack, PhoenixWebpack.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [{Path.expand("webpack.dev.js"), []}]

# Watch static and templates for browser reloading.
config :phoenix_webpack, PhoenixWebpack.Endpoint,
  live_reload: [
    patterns: [
      # ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :phoenix_webpack, PhoenixWebpack.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_webpack_dev",
  hostname: "localhost",
  pool_size: 10
