
# Dealing with medium to large data

- Actually discuss what "medium" and "large" means
- Data that are too large to meet the R package limit (5mb), or the Github limit of 150mb (at which the repo becomes far less usable).
- The use case we are considering is when someone has a database with a few 100k to millions of rows and these data need to be shared without incurring the complexities of maintaining a live database server.

In this case there are various tools buit atop the DBI interface (Kirill citation) that allow users to export and import text dumps of data between the disk and a serverless database. The advantage of this approach is that it keeps the data in a [minimal basic fomat] such as csv.

Add a notes on how to manage medium to larger (but not big data)

Discussion on arkdb, dbi, piggyback and other ideas.