defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Shabab", email: "shabab@email.com"},
      %{id: 2, name: "Sharika", email: "sharika@email.com"},
      %{id: 3, name: "Shadat", email: "shadat@email.com"},
    ]
    json(conn, %{users: users})
  end
end
