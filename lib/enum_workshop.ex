defmodule EnumWorkshop do
  @doc """
  reimplement the functionality of `Enum.count/1` without using the
  `count/1` function from the `Enum.module`.

    iex> EnumWorkshop.count([])
    0

    iex> EnumWorkshop.count([1])
    1

    iex> EnumWorkshop.count([1, 2, 3, 4])
    4
  """
  @spec count(list) :: [Any]
  def count(list) do
    do_count(list) # replace with your own implementation
  end

  defp do_count(list, acc \\ 0)
  defp do_count([], acc) do
    acc
  end
  defp do_count([_|rest], acc) do
    do_count(rest, acc + 1)
  end

  @doc """
  reimplement the functionality of `Enum.member?/1` without using the
  `member?/1` function from the `Enum.module`.

    iex> EnumWorkshop.member?([], 5)
    false

    iex> EnumWorkshop.member?([1], 1)
    true

    iex> EnumWorkshop.member?([1, 2, 3, 4], 3)
    true

    iex> EnumWorkshop.member?([1, 2, 3, 4], 7)
    false
  """
  @spec member?(list, Any) :: Boolean
  def member?(list, n) do
    do_member(list, n)
  end

  defp do_member([], _), do: false
  defp do_member([n|_], n), do: true
  defp do_member([_|tail], n), do: do_member(tail, n)

  @doc """
  reimplement the functionality of `Enum.min/1` without using the
  `min/1` function from the `Enum.module`.

    iex> EnumWorkshop.min([1, 2, 3, 4])
    1

    iex> EnumWorkshop.min([4, 3, 2, 1])
    1

    iex> EnumWorkshop.min([5, 42, 3, 108, 3])
    3
  """
  @spec min([Integer]) :: Integer
  def min([]), do: raise message: "empty error"
  def min(list), do: do_min(list, nil)

  defp do_min([], min), do: min
  defp do_min([head|tail], nil), do: do_min(tail, head)
  defp do_min([head|tail], current) when head < current, do: do_min(tail, head)
  defp do_min([_|tail], current), do: do_min(tail, current)

  @doc """
  reimplement the functionality of `Enum.reverse/1` without using the
  `reverse/1` function from the `Enum.module`.

    iex> EnumWorkshop.reverse([1, 2, 3, 4])
    [4, 3, 2, 1]

    iex> EnumWorkshop.reverse([1, 1, 2, 2])
    [2, 2, 1, 1]

    iex> EnumWorkshop.reverse([1, 2, 1])
    [1, 2, 1]
  """
  @spec reverse(list) :: [Any]
  def reverse(list) do
    do_reverse list, []
  end

  defp do_reverse([], acc), do: acc
  defp do_reverse([head|tail], acc), do: do_reverse(tail, [head|acc])

  @doc """
  reimplement the functionality of `Enum.filter/2` without using the
  `filter/2` function from the `Enum.module`.

    iex> EnumWorkshop.filter([1, 2, 3, 4], fn x -> x < 3 end)
    [1, 2]

    iex> EnumWorkshop.filter([1, 1, 2, 2], fn x -> x == 1 end)
    [1, 1]

    iex> EnumWorkshop.filter([1, 2, 3, 4, 5, 6], fn x -> rem(x, 2) == 1 end)
    [1, 3, 5]
  """
  @spec filter(list, function) :: [Any]
  def filter(list, fun), do: do_filter(list, [], fun)

  defp do_filter([], acc, _), do: reverse(acc)
  defp do_filter([head|tail], acc, fun) do
    if apply(fun, [head]) do
      do_filter(tail, [head|acc], fun)
    else
      do_filter(tail, acc, fun)
    end
  end

  @doc """
  reimplement the functionality of `Enum.dedup/1` without using the
  `dedup/1` function from the `Enum.module`.

    iex> EnumWorkshop.dedup([1, 2, 3, 4])
    [1, 2, 3, 4]

    iex> EnumWorkshop.dedup([1, 1, 2, 2])
    [1, 2]

    iex> EnumWorkshop.dedup([1, 1, 2, 2, 1, 1])
    [1, 2, 1]
  """
  @spec dedup(list) :: [Any]
  def dedup(list), do: do_dedup(list, [])

  defp do_dedup([], acc), do: reverse(acc)
  defp do_dedup([head|tail], [head|_] = acc), do: do_dedup(tail, acc)
  defp do_dedup([head|tail], acc), do: do_dedup(tail, [head|acc])

  @doc """
  reimplement the functionality of `Enum.chunk/2` without using the
  `chunk/1` function from the `Enum.module`.

    iex> EnumWorkshop.chunk([1, 2, 3, 4], 2)
    [[1, 2], [3, 4]]

    iex> EnumWorkshop.chunk([4, 3, 2, 1], 2)
    [[4, 3], [2, 1]]

    iex> EnumWorkshop.chunk([5, 42, 3, 108], 3)
    [[5, 42, 3]]
  """
  @spec chunk(Any, pos_integer) :: [list]
  def chunk(list, n) do
    Enum.chunk(list, n)
  end
end
