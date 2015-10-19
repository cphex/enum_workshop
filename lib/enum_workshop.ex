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
    Enum.count list # replace with your own implementation
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
    Enum.member? list, n # replace with your own implementation
  end

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
    Enum.reverse list # replace with your own implementation
  end

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
  def min(list) do
    Enum.min list # replace with your own implementation
  end

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
  def filter(list, fun) do
    Enum.filter list, fun # replace with your own implementation
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
  def dedup(list) do
    Enum.dedup list # replace with your own implementation
  end

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
    Enum.chunk list, n # replace with your own implementation
  end

end
