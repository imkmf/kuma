defmodule Kuma.WebhookController do
  use Kuma.Web, :controller

  def index(conn, %{"hub.verify_token" => verify_token, "hub.challenge" => challenge}) do
    resp =
      case verify_token do
        "helloworld" -> challenge
        _ -> "notok"
      end
    text conn, resp
  end

  def index(conn, _params) do
    text conn, %{status: "ok"}
  end
end
