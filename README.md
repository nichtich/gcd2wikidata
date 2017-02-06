# Mapping the Grand Comics Database to Wikidata

**Wikidata property [P3589](https://www.wikidata.org/wiki/Property:P3589) has been created to connect Wikidata items with GCD series IDs**

GCD dumps (MySQL and PostgreSQL) can be downloaded from
<http://www.comics.org/download/> after login.

The data is published under CC-BY.

In early 2017 the dump file (`current.zip`) it was less then 200MB and the
series less than 7MB compressed. See the bash script `extract.sh` to extract
series data from the full dump:

* `series.zip` will contain the full series SQL table. The database scheme is documented at <http://docs.comics.org/wiki/Current_Schema#Series>.

* `series.csv` will contain the full series table as CSV

* `series.tsv` will contain id, name, and year in TSV format to be uploaded to mix'n'majtch (conversion requires Catmandu)

