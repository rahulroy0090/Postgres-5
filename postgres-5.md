### 1. Set up a container for Database 1 and assign a port.
##### 1.1 Populate Database 1 with sample data, such as information for a hospital, school, and college.



#### Setup postgresql database podman continor.

```
podman run --name postgres-master \
    -e POSTGRES_PASSWORD=rahul \
    -e POSTGRES_DB=postgres \
    -e POSTGRES_USER=rahul \
    -d \
    -p 5432:5432 \
    -v /home/post/data/postgres/slave:/var/lib/postgresql/data \
    postgres


```

### Now, create the database of school management.

```
 # Create table Students.


CREATE TABLE Students(
    "Student ID" SERIAL PRIMARY KEY,
    "First Name" VARCHAR(50) NOT NULL,
    "Last Name" VARCHAR(50) NOT NULL,
    "Date of Birth" DATE NOT NULL,  
    "Contact Number" BIGINT NOT NULL,
    "Parent/Guardian Name" VARCHAR(50) NOT NULL,  
    "Class Enrolled" VARCHAR(50) NOT NULL,
    "Academic Grades" VARCHAR(50) NOT NULL
);

```




```
# Insert data into the student table.

INSERT INTO students ("Student ID", "First Name", "Last Name", "Date of Birth", "Contact Number", "Parent/Guardian Name", "Class Enrolled", "Academic Grades")
VALUES (1008, 'Mahi', 'Kumar', '2002-06-14', '7632004998', 'Ram Singh', '123432', 'A+'),(1002, 'Mohan', 'Kumar', '2002-06-14', '7632950098', 'Ram Singh', '1234322', 'A+'),(1003, 'Rakesh', 'Kumar', '2002-06-14', '7632950098', 'Ram Singh', '1234322', 'A+'), (1004, 'arjun', 'Kumar', '2002-06-14', '7632950098', 'Ram Singh', '1234322', 'A+'), (1005, 'Balindra', 'Kumar', '2002-06-14', '7632950098', 'Ram Singh', '1234322', 'A+'), (1006, 'Ankur', 'Kumar', '2002-06-14', '7632950098', 'Ram Singh', '1234322', 'A+');


```


```

 SELECT * FROM students ;

 Student ID | First Name | Last Name | Date of Birth | Contact Number | Parent/Guardian Name | Class Enrolled | Academic Grades 
------------+------------+-----------+---------------+----------------+----------------------+----------------+-----------------
       1001 | Lucifer    | Kumar     | 2002-06-14    |     7632954998 | Ram Singh            | 1234322        | A+
       1008 | Mahi       | Kumar     | 2002-06-14    |     7632004998 | Ram Singh            | 123432         | A+
       1002 | Mohan      | Kumar     | 2002-06-14    |     7632950098 | Ram Singh            | 1234322        | A+
       1003 | Rakesh     | Kumar     | 2002-06-14    |     7632950098 | Ram Singh            | 1234322        | A+
       1004 | arjun      | Kumar     | 2002-06-14    |     7632950098 | Ram Singh            | 1234322        | A+
       1005 | Balindra   | Kumar     | 2002-06-14    |     7632950098 | Ram Singh            | 1234322        | A+
       1006 | Ankur      | Kumar     | 2002-06-14    |     7632950098 | Ram Singh            | 1234322        | A+
(7 rows)




```





```
## command for access the database. 

podman star postgres-master 

podman exec -it postgres-master bash

su postgres


### Now, let's take a dump of school database.
pg_dump -U postgres -d school > /tmp/school.sql 


```





### 2. Create Database 2 within a separate container using a different port.

#### 2.1 Import the data from the earlier database into Database 2.


```
Setup postgres-slave postgresql contniore

podman run --name postgres-slave \
    -e POSTGRES_PASSWORD=rahul \
    -e POSTGRES_DB=postgres \
    -e POSTGRES_USER=rahul \
    -d \
    -p 5433:5432 \
    -v /home/post/data/postgres/slave:/var/lib/postgresql/data \
    postgres

```

```
## command for access the database. 

 podman start postgres-slave 

podman exec -it postgres-slave bash

su postgres

psql -U postgres -d postgres

CREATE DATABSE SCHOOL;

\q

# Now  restore the school data into the school database.

psql -U postgres -d school < /tmp/school.sql


```



```

Now, connect the school database and check the data restored.

psql  

\l 

\c school


\dt


```



### 3. Apply modifications to Database 1, then synchronise those changes with Database 2. Repeat this sequence at least three times.


```

##Apply modifications to postgres-master


vim /var/lib/pgsql/data/postgresql.conf

listen_addresses = '*'
wal_level = replica
max_wal_senders = 3


```



```
## vim /var/lib/postgresql/data/pg_hba.conf

host     replication    replicator         0.0.0.0/0       md5

```

```
Restart the database

 pg_ctl -D /var/lib/postgresql/data restart



```




#### Now configuretion for slave database.



```
podman exec -it postgres-slave bash

apt update

apt install vim


vim /var/lib/postgresql/data/postgresql.conf


listen_addresses = '*'

wal_level = replica

max_wal_senders = 3 

hot_standby = on

```



```
 vim /var/lib/postgresql/data/pg_hba.conf


host replication replicator 0.0.0.0/0 md5

 pg_ctl -D /var/lib/postgresql/data restart

```


```

podman exec -it postgres-master psql -U postgres -c "CREATE new-database;

CREATE USER replicator REPLICATION LOGIN CONNECTION LIMIT 1 ENCRYPTED PASSWORD 'rahul@123';



```


Now, create the table inside the master and check the slave.


```
ommand for access the database. 

podman star postgres-master 

podman exec -it postgres-master bash

su postgres

psql

create table thor(
    id int primary key,
    name varchar(100) not null
);

INSERT INTO thor (id, name) values(1, 'Rahul');


## Now check the slave database.

odman exec -it postgres-slave bash

su postgres

psql


\dt

select * from thor;

```





