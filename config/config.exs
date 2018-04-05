# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :borker,
  ecto_repos: [Borker.Repo]

# Configures the endpoint
config :borker, BorkerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RSFkVZRSP/t3PtpIoaZKBO3In0qldQ6QOBikRI6UZVLzmptETorJtjabQ7fsnZdQ",
  render_errors: [view: BorkerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Borker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Borker.Coherence.User,
  repo: Borker.Repo,
  module: Borker,
  web_module: BorkerWeb,
  router: BorkerWeb.Router,
  messages_backend: BorkerWeb.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, BorkerWeb.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
