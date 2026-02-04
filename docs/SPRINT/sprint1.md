# 2026-02-04

I have created my databse that contains the Routes and the stops that are related to the Routes, where every route will have its own, district_number,

every stop is requeried to have cordinates so the driver can easely find where the next stop is

## Syfte

Skapa en stabil databasstruktur för MVP som kan lagra rutter (distrikt)
och stopp (brevlådor) med GPS-position.

## Genomfört

- Skapat MySQL-databas
- Skapat tabell `Routes`
- Skapat tabell `Stops`
- Etablerat 1-till-många-relation mellan Routes och Stops
- Implementerat foreign key med ON DELETE CASCADE

## Datamodell

- 1 distrikt = 1 rutt
- En rutt kan ha flera stopp
- Ett stopp kan aldrig existera utan en rutt

## Status

Databasen skapad DONE
Testinsert fungerar DONE
Redo att kopplas till FastAPI DONE
