defmodule TicTacToe do
  def winner(board) do
    check(board)
  end

  defp check({a, a, a, _, _, _, _, _, _}), do: {:winner, a}
  defp check({a, _, _, a, _, _, a, _, _}), do: {:winner, a}
  defp check({_, _, _, a, a, a, _, _, _}), do: {:winner, a}
  defp check({_, _, _, _, _, _, a, a, a}), do: {:winner, a}
  defp check({_, a, _, _, a, _, _, a, _}), do: {:winner, a}
  defp check({_, _, a, _, _, a, _, _, a}), do: {:winner, a}
  defp check({a, _, _, _, a, _, _, _, a}), do: {:winner, a}
  defp check({_, _, a, _, a, _, a, _, _}), do: {:winner, a}
  defp check(board), do: :no_winner
end

IO.inspect TicTacToe.winner({
  :x, :o, :x,
  :o, :x, :o,
  :o, :o, :x
  }) == {:winner, :x}

  IO.inspect TicTacToe.winner({
    :x, :o, :x,
    :o, :x, :o,
    :o, :x, :o
    }) == :no_winner

IO.inspect TicTacToe.winner({
  :x, :x, :x,
  :o, :o, :x,
  :o, :x, :o
  }) == {:winner, :x}

  IO.inspect TicTacToe.winner({
    :o, :o, :o,
    :o, :x, :x,
    :x, :x, :o
    }) == {:winner, :o}
