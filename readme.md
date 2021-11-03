Prerequisites:
```
Metacello new
	repository: 'github://pharo-rdbms/Pharo-SQLite3/src';
	baseline: 'SQLite3';
	load: 'SQLite3-Glorp'.
```

Crashing script:
```
dbfile := (FileReference newTempFilePrefix: 'CNB_' suffix: '.db') path.

l := Login new
	database: UDBCSQLite3Platform new;
	host: dbfile parent pathString;
	databaseName: dbfile basename.

s :=  CNBDescriptor sessionForLogin: l.

s login.
s createTables.

"following line crashes"
s inUnitOfWorkDo: [ s register: CNBObject dummy ].
```