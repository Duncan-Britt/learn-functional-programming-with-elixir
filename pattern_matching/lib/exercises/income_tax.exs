Code.require_file("income_tax.ex")

print_info = fn salary ->
  tax = IncomeTax.calculate(salary)
  net = salary - tax
  IO.puts "Income tax: #{tax}, net salary: #{net}"
end

case Integer.parse IO.gets("What's your salary? ") do
  :error -> IO.puts "Invalid number"
  {salary, _} -> print_info.(salary)
end
