defmodule IncomeTax do
  def calculate(salary) do
    result = cond do
      salary <= 2000 -> 0
      salary <= 3000 -> 0.05 * salary
      salary <= 6000 -> 0.1 * salary
      salary > 6000 -> 0.15 * salary
    end
    result
  end
end
