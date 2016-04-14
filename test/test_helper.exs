ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Kuma.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Kuma.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Kuma.Repo)

