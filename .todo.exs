%ExTodo.Config{
  error_codetags: ["FIXME", "BUG"],
  skip_patterns: [~r/\.git/, ~r/_build/, ~r/deps/, ~r/cover/, ~r/docs/, ~r/\.todo\.exs/, ~r/models/, ~r/data/,
  ~r/mix.exs/, ~r/mix.lock/],
  supported_codetags: ["NOTE", "TODO", "FIXME", "HACK", "BUG", "todo"]
}
