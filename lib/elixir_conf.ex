defmodule ElixirConf do
  @moduledoc """
  Documentation for `ElixirConf`.
  """

  @doc """
  Make prediction against the Titanic Dataset
  """
  def titanic(inputs) do
    inputs = preprocess(inputs)

    model_file = "models/titanic_model.axon"

    {model, %{model_state: model_state} = params} =
      File.read!(model_file)
      |> Axon.deserialize()

    {_, predict_fn} = Axon.build(model)
    predict_fn.(params, Nx.tensor([inputs]))
  end

  defp preprocess(inputs) do
    # preprocess the input data 0..1
    inputs
  end
end
