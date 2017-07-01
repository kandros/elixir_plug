defmodule ElixirPlug.HelloWorld do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _otps) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world from plug!")
  end
end
