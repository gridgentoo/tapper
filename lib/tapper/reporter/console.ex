defmodule Tapper.Reporter.Console do
  require Logger

  @behaviour Tapper.Reporter.Api

  def ingest(spans) when is_list(spans) do
    IO.inspect(IO.iodata_to_binary(Tapper.Encoder.Json.encode!(spans)))
  end
end
