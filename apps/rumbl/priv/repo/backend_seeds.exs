alias Rumbl.Repo
alias Rumbl.User

changeset = User.registration_changeset(%User{}, %{name: "Wolfram", username: "wolfram", password: "password"})
Repo.get_by(User, username: "wolfram") || Repo.insert!(changeset)
