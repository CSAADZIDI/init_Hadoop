hadoop jar /usr/hdp/current/hadoop-client/hadoop-streaming.jar \
  -files wasbs://containertodelete@storageaccounttodelete.blob.core.windows.net/data/employees_mapper.py,\
wasbs://containertodelete@storageaccounttodelete.blob.core.windows.net/data/employees_reducer.py \
  -input wasbs://containertodelete@storageaccounttodelete.blob.core.windows.net/data/employees.csv \
  -output wasbs://containertodelete@storageaccounttodelete.blob.core.windows.net/data/results_employees \
  -mapper employees_mapper.py \
  -reducer employees_reducer.py


hadoop jar /usr/hdp/current/hadoop-client/hadoop-streaming.jar \
  -files wasbs://ssilalakhadoopcontainer@ssilalakhadoopstorageacc.blob.core.windows.net/data/fruits_mapper.py,\
wasbs://ssilalakhadoopcontainer@ssilalakhadoopstorageacc.blob.core.windows.net/data/fruits_reducer.py \
  -input wasbs://ssilalakhadoopcontainer@ssilalakhadoopstorageacc.blob.core.windows.net/data/fruits.csv \
  -output wasbs://ssilalakhadoopcontainer@ssilalakhadoopstorageacc.blob.core.windows.net/data/results_fruits \
  -mapper fruits_mapper.py \
  -reducer fruits_reducer.py