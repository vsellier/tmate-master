defmodule Tmate.Client do
  use Ecto.Model

  @primary_key false

  schema "clients" do
    belongs_to :session,  Tmate.Session, type: :binary_id, references: :id
    field :client_id,     :integer
    field :ip_address,    :string
    field :joined_at,     Ecto.DateTime
    field :left_at,       Ecto.DateTime
    field :readonly,      :boolean
    field :latency_stats, :map
    belongs_to :identity, Tmate.Identity, references: :id
  end

  def changeset(model, params \\ %{}) do
    model
    |> change(params)
  end
end
