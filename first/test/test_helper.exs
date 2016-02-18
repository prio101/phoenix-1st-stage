ExUnit.start

Mix.Task.run "ecto.create", ~w(-r First.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r First.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(First.Repo)

