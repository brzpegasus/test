defmodule Test.Web.Router do
  use Test.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Test.Web do
    pipe_through :api
  end
end
