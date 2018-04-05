defmodule Borker.Bork do
  use Ecto.Schema
  import Ecto.Changeset


  schema "borks" do
    field :content, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(bork, attrs) do
    bork
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
