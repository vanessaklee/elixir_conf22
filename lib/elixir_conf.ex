defmodule ElixirConf do
  @moduledoc """
  Documentation for `ElixirConf`.
  """

  @doc """
  Make prediction against the Titanic Dataset
  """
  def titanic(inputs) do
    # model_file = "elixir_conf/models/iris_nn_model.axon"
    model_file = "models/titanic_model.axon"

    {saved_model, %{model_state: model_state} = saved_params} =
      File.read!(model_file)
      |> Axon.deserialize()

    # {init_fn, predict_fn} = Axon.build(model)
    # {init_fn, predict_fn} = Axon.compile(model, template, init_params \\ %{}, opts \\ [])

    # init_fn.(Nx.template({1, 1}, {:f, 32}), %{})
    # predict_fn.(params, inputs)

    # {saved_model, saved_params} = Axon.deserialize(serialized)
    {_, predict_fn} = Axon.build(saved_model)
    predict_fn.(saved_params, Nx.tensor([inputs]))

    # inputs
    # |> Enum.each(fn {input, nil} ->
    #   Axon.predict(model, model_state, input)
    #     |> scalar()
    # end)
  end

  defp scalar(t), do: t |> Nx.to_flat_list() |> List.first()
end
