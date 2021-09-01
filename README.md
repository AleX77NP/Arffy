# Arffy

**Simple tool to convert JSON array or CSV to ARFF file. Can be handy for those who use WEKA.**

## Installation

Using [Hex](https://hex.pm/packages/arffy), the package can be installed
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

**CSV to .arrf file:**

```
1,"Eldon Base for stackable storage shelf, platinum",Muhammed MacIntyre,3,-213.25,38.94,35,Nunavut,Storage & Organization,0.8
2,"1.7 Cubic Foot Compact ""Cube"" Office Refrigerators",Barry French,293,457.81,208.16,68.02,Nunavut,Appliances,0.58
3,"Cardinal Slant-DÆ Ring Binder, Heavy Gauge Vinyl",Barry French,293,46.71,8.69,2.99,Nunavut,Binders and Binder Accessories,0.39
4,R380,Clay Rozendal,483,1198.97,195.99,3.99,Nunavut,Telephones and Communication,0.58
5,Holmes HEPA Air Purifier,Carlos Soltero,515,30.94,21.78,5.94,Nunavut,Appliances,0.5
6,G.E. Longer-Life Indoor Recessed Floodlight Bulbs,Carlos Soltero,515,4.43,6.64,4.95,Nunavut,Office Furnishings,0.37
7,"Angle-D Binders with Locking Rings, Label Holders",Carl Jackson,613,-54.04,7.3,7.72,Nunavut,Binders and Binder Accessories,0.38
8,"SAFCO Mobile Desk Side File, Wire Frame",Carl Jackson,613,127.70,42.76,6.22,Nunavut,Storage & Organization,
9,"SAFCO Commercial Wire Shelving, Black",Monica Federle,643,-695.26,138.14,35,Nunavut,Storage & Organization,
10,Xerox 198,Dorothy Badders,678,-226.36,4.98,8.33,Nunavut,Paper,0.38
11,Xerox 1980,Neola Schneider,807,-166.85,4.28,6.18,Nunavut,Paper,0.4
12,Advantus Map Pennant Flags and Round Head Tacks,Neola Schneider,807,-14.33,3.95,2,Nunavut,Rubber Bands,0.53
13,Holmes HEPA Air Purifier,Carlos Daly,868,134.72,21.78,5.94,Nunavut,Appliances,0.5
14,"DS/HD IBM Formatted Diskettes, 200/Pack - Staples",Carlos Daly,868,114.46,47.98,3.61,Nunavut,Computer Peripherals,0.71
15,"Wilson Jones 1"" Hanging DublLockÆ Ring Binders",Claudia Miner,933,-4.72,5.28,2.99,Nunavut,Binders and Binder Accessories,0.37
```
```
@relation 'my-arffy-relation'

@attribute attr-0 numeric
@attribute attr-1 string
@attribute attr-2 string
@attribute attr-3 string
@attribute attr-4 numeric
@attribute attr-5 numeric
@attribute attr-6 numeric
@attribute attr-7 numeric
@attribute attr-8 string
@attribute attr-9 string
@attribute attr-10 numeric

@data
1,"Eldon Base for stackable storage shelf, platinum",Muhammed MacIntyre,3,-213.25,38.94,35,Nunavut,Storage & Organization,0.8
2,"1.7 Cubic Foot Compact ""Cube"" Office Refrigerators",Barry French,293,457.81,208.16,68.02,Nunavut,Appliances,0.58
3,"Cardinal Slant-DÆ Ring Binder, Heavy Gauge Vinyl",Barry French,293,46.71,8.69,2.99,Nunavut,Binders and Binder Accessories,0.39
4,R380,Clay Rozendal,483,1198.97,195.99,3.99,Nunavut,Telephones and Communication,0.58
5,Holmes HEPA Air Purifier,Carlos Soltero,515,30.94,21.78,5.94,Nunavut,Appliances,0.5
6,G.E. Longer-Life Indoor Recessed Floodlight Bulbs,Carlos Soltero,515,4.43,6.64,4.95,Nunavut,Office Furnishings,0.37
7,"Angle-D Binders with Locking Rings, Label Holders",Carl Jackson,613,-54.04,7.3,7.72,Nunavut,Binders and Binder Accessories,0.38
8,"SAFCO Mobile Desk Side File, Wire Frame",Carl Jackson,613,127.70,42.76,6.22,Nunavut,Storage & Organization,
9,"SAFCO Commercial Wire Shelving, Black",Monica Federle,643,-695.26,138.14,35,Nunavut,Storage & Organization,
10,Xerox 198,Dorothy Badders,678,-226.36,4.98,8.33,Nunavut,Paper,0.38
11,Xerox 1980,Neola Schneider,807,-166.85,4.28,6.18,Nunavut,Paper,0.4
12,Advantus Map Pennant Flags and Round Head Tacks,Neola Schneider,807,-14.33,3.95,2,Nunavut,Rubber Bands,0.53
13,Holmes HEPA Air Purifier,Carlos Daly,868,134.72,21.78,5.94,Nunavut,Appliances,0.5
14,"DS/HD IBM Formatted Diskettes, 200/Pack - Staples",Carlos Daly,868,114.46,47.98,3.61,Nunavut,Computer Peripherals,0.71
15,"Wilson Jones 1"" Hanging DublLockÆ Ring Binders",Claudia Miner,933,-4.72,5.28,2.99,Nunavut,Binders and Binder Accessories,0.37
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/arffy](https://hexdocs.pm/arffy).

