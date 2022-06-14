import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :repo_exception, RepoExceptionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "oiKAaJ68R8sWrZMCmap/29hwvcojyddiX1aemUPFp3b6CB1W0KPyLThg0BXd+ByS",
  server: false

# In test we don't send emails.
config :repo_exception, RepoException.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
