using SQLite
using StatsBase

# Array sizes defined here... want to have a large range of sizes to test
array_sizes = [0, 2^0, 2^1, 2^2, 2^3, 2^4, 2^5, 2^6, 2^7, 2^8, 2^9, 2^10]
max_int = 2^16 # Defining a range large enough to ensure uniqueness within each array.

arrays = []

for size in array_sizes
  if size == 0
    arr = Int[] # Empty int array
  else
    # Sample 'size' unique integers and sort them
    arr = sort(sample(1:max_int, size; replace = false))
  end
  push!(arrays, arr)
end 

db = SQLite.DB("arrays.db")

SQLite.execute(db, """
   CREATE TABLE IF NOT EXISTS arrays (
       array_id INTEGER,
       element_index INTEGER,
       element_value INTEGER
   )
""")

for (array_id, arr) in enumerate(arrays)
  for (element_index, element_value) in enumerate(arr)
    SQLite.execute(db, """
                   INSERT INTO arrays (array_id, element_index, element_value)
                   VALUES (?, ?, ?)
                   """, (array_id, element_index, element_value))
  end
end 




