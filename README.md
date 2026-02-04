# Route-Optimizer
“The system learns routes organically. The first delivery run captures mailbox locations via GPS, and all subsequent runs are fully optimized and guided.”


## MVP
### My MVP should include
- Android-app
- Google Maps
- show the curent location in realtime
- measure the speed thrugh the GPS
- If speed < than 5km/h -> "stop mode" ON 

### When the driver stands still
- button: “Mark Mailbox”
- 1 push = 1 mailbox
- posibility to push several times (counter) 

### Next step
- push “Next stop”
- continue until the whole route is done

### Backend
- recives:
- GPS-koordinat
- Antal brevlådor
- Route-id
- Time stemple
- save in the database (MySQL)
