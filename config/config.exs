# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :channel_chats, ChannelChats.Endpoint,
  url: [host: "104.236.25.229"],
  secret_key_base: "BYw+IxRXslbnkOu0trof9QpETpfdsP9CUOhMA2eVr37/WGd2VVgUad1FIG2KQK6K",
  render_errors: [accepts: "html"],
  pubsub: [name: ChannelChats.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# config :channel_chats, ChannelChats.Presence,
#   pubsub_server: ChannelChats.PubSub

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This line was automatically added by ansible-elixir-stack setup script
if System.get_env("SERVER") do
  config :phoenix, :serve_endpoints, true
end
