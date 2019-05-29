[pq2gorm](https://github.com/wantedly/pq2gorm)

```shell=
docker exec -ti pq2gorm sh
make
make install

pq2gorm "postgres://admin:12345@140.96.0.34:50003/Test_db?sslmode=disable"

## resault
.
├── alembic_version.go
├── car_accident.go
├── car_accident_collision_time.go
├── car_accident_tag.go
├── car_accident_tag_map.go
├── subtitle.go
├── subtitle_tag.go
└── subtitle_tag_map.go
```

