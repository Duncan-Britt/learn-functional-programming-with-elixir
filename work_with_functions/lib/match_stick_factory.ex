defmodule MatchstickFactory do
  def boxes(sticks) do
    bigs = div(sticks, 50)
    sticks = rem(sticks, 50)
    mids = div(sticks, 20)
    sticks = rem(sticks, 20)
    smalls = div(sticks, 5)
    sticks = rem(sticks, 5)
    %{big: bigs, medium: mids, remaining_matchsticks: sticks, small: smalls}
  end
end
