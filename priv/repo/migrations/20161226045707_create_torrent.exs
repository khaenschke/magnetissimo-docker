defmodule Magnetissimo.Repo.Migrations.CreateTorrent do
  use Ecto.Migration

  def change do
    create table(:torrents) do
      add :magnet, :text
      add :seeders, :integer
      add :leechers, :integer
      add :name, :text
      add :website_source, :string
      add :size, :string

      timestamps()
    end
    create unique_index(:torrents, [:magnet])
    create index(:torrents, [:name])
    create index(:torrents, [:website_source])

  end
end
