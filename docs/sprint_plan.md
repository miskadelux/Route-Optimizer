# Sprint-plan – MVP Route Optimizer

Denna sprint-plan bryter ner MVP:n i **konkreta, genomförbara tasks** anpassade för en ensam utvecklare. Fokus är att nå en **visningsbar MVP på ca 2 veckor**.

---

## Sprint 1 – Backend & Datagrund (3–4 dagar)

### Mål

Ha ett fungerande backend-API som kan ta emot och spara stopp (brevlådor) kopplat till en rutt.

### Tasks

1. Databasstruktur (MySQL)
   - Skapa tabell `routes`
   - Skapa tabell `stops`

2. Backend-konfiguration
   - Koppla FastAPI till MySQL
   - Skapa DB-session och connection pool

3. Datamodeller
   - Route-model
   - Stop-model (lat, lon, mailbox_count, timestamp)

4. API-endpoints
   - `POST /routes` – skapa rutt
   - `POST /stops` – spara stopp
   - `GET /routes/{id}` – hämta rutt med stopp

### Acceptanskriterier

- API startar lokalt
- Stopp kan skickas via curl/Postman
- Data sparas korrekt i databasen

---

## Sprint 2 – Android Grundapp & Karta (3–4 dagar)

### Mål

Ha en Android-app som visar karta och användarens position i realtid.

### Tasks

1. Android-projekt
   - Skapa nytt Android-projekt (Kotlin)
   - Lägg till Google Maps SDK

2. Kartvy
   - Visa karta
   - Visa användarens position
   - Hantera GPS-permissions

3. GPS-data
   - Lyssna på positionsuppdateringar
   - Hämta hastighet från GPS

### Acceptanskriterier

- Appen startar utan crash
- Kartan visas korrekt
- Användarens position uppdateras

---

## Sprint 3 – Stopp-registrering (3–4 dagar)

### Mål

Kunna markera brevlådor när utdelaren står stilla och skicka detta till backend.

### Tasks

1. STOPP-läge
   - Identifiera stillastående via GPS-hastighet

2. UI-komponenter
   - Knapp: "Markera brevlåda"
   - Räknare för antal brevlådor
   - Knapp: "Nästa stopp"

3. API-integration
   - Skicka stoppdata till backend
   - Visa bekräftelse i appen

### Acceptanskriterier

- Stopp kan markeras manuellt
- Antal brevlådor sparas
- Backend tar emot korrekt data

---

## Sprint 4 – Demo & Stabilisering (2–3 dagar)

### Mål

Ha en stabil MVP som kan visas live.

### Tasks

1. Enkel felhantering
   - Hantera utebliven GPS
   - Visa tydliga statusmeddelanden

2. Demo-förberedelser
   - Förifylld test-rutt
   - Testa hel flödeskörning
     S

3. Dokumentation
   - Uppdatera README
   - Kort demo-instruktion

### Acceptanskriterier

- Hela rutten kan köras
- Minst 3 stopp kan sparas
- Demo kan genomföras utan manuell kodändring

---

## Definition of Done – MVP

MVP anses klar när:

- Android-app + backend fungerar tillsammans
- Brevlådor kan markeras på karta
- Data sparas och kan återhämtas
- Projektet kan visas på 5 minuter

---

## Viktig regel

Om en uppgift inte bidrar direkt till MVP-definitionen ska den **inte göras nu**.
