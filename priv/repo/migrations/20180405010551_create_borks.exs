defmodule Borker.Repo.Migrations.CreateBorks do
  use Ecto.Migration

  def change do
    create table(:borks) do
      add :content, :string
      add :user_id, references(:users, on_delete: :delete_all)

      timestamps()
    end

    create index(:borks, [:user_id])
  end
end
