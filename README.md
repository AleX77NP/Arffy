# Arffy

**Simple tool to convert JSON array or CSV to ARFF file. Can be handy for those who use WEKA.**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `arffy` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:arffy, "~> 0.1.0"}
  ]
end
```
## Examples

**JSON array to .arrf file:**

```
[
  {
    "Id": 1,
    "Name": "Ahmad",
    "Age": 21,
    "Height": 178,
    "Tall": "NO"
  },
  {
    "Id": 2,
    "Name": "John",
    "Age": 34,
    "Height": 211,
    "Tall": "YES"
  },
  {
    "Id": 3,
    "Name": "Nathan",
    "Age": 21,
    "Height": 175,
    "Tall": "NO"
  },
  {
    "Id": 4,
    "Name": "Marco",
    "Age": 44,
    "Height": 197,
    "Tall": "YES"
  },
  {
    "Id": 5,
    "Name": "Gary",
    "Age": 18,
    "Height": 170,
    "Tall": "NO"
  }
]
```
```
@relation 'my-arffy-relation'

@attribute attr-Age numeric
@attribute attr-Height numeric
@attribute attr-Id numeric
@attribute attr-Name string
@attribute attr-Tall {NO,YES}

@data
21,178,1,Ahmad,NO
34,211,2,John,YES
21,175,3,Nathan,NO
44,197,4,Marco,YES
18,170,5,Gary,NO
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/arffy](https://hexdocs.pm/arffy).

