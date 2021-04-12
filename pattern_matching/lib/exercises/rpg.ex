defmodule Rpg do
  def total_spent(attributes) do
    %{
      strength: strength_value,
      dexterity: dexterity_value,
      intelligence: intelligence_value
      } = attributes
    (strength_value * 2) + (dexterity_value + intelligence_value) * 3
  end
end
