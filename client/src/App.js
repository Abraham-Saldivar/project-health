import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;

users = User.create([
  {
    f_name: "John",
    l_name: "Smith",
    password_digest: "123456",
    email: "john@example.com",
    username: "j1234",
  },
  {
    f_name: "Marge",
    l_name: "Smith",
    password_digest: "1234567",
    email: "marge@example.com",
    username: "m1234",
  },
]);
// t.string "name"
//   t.string "nickname"
//   t.integer "dose"
//   t.datetime "frequency"
//   t.bigint "user_id", null: false
//   t.datetime "created_at", precision: 6, null: false
//   t.datetime "updated_at", precision: 6, null: false
//   t.index ["user_id"], name: "index_m_posts_on_user_id"

mposts = M_Post.create([
  { nickname: "my_med", dose: 10, frequency: DateTime.now, user: users.first },
  { nickname: "my_med", dose: 10, frequency: DateTime.now, user: users.first },
]);
