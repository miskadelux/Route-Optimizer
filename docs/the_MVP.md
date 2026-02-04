# MVP – Route Optimizer

## 1. Syfte

Syftet med denna MVP är att på ett enkelt och praktiskt sätt **digitalisera utdelningsrutter** genom att låta utdelaren själv markera var brevlådor finns första gången en rutt körs. Informationen sparas och kan återanvändas vid framtida utdelningar.

MVP:n ska fungera som ett **bevis på värde**, inte som en färdig produkt.

---

## 2. Problem som löses

- Pappersbaserade adresslistor är svåra att följa
- Kartappar och adresslistor är inte synkroniserade
- Ingen strukturerad data finns om faktiska brevlådspositioner
- Nya utdelare måste "lära sig rutten" manuellt

---

## 3. Lösning (MVP-nivå)

En Android-app som:

- Visar utdelarens position på karta (Google Maps)
- Känner av när utdelaren står stilla (via GPS-hastighet)
- Tillåter manuell markering av en eller flera brevlådor
- Sparar varje stopp kopplat till en specifik rutt

All data skickas till ett backend-API och sparas i databas.

---

## 4. MVP-funktionalitet (EXAKT scope)

### Android-app

- Google Maps med realtidsposition
- GPS-hastighetsmätning
- STOPP-läge när hastighet < definierat tröskelvärde
- Knapp: "Markera brevlåda"
- Möjlighet att markera flera brevlådor på samma position
- Knapp: "Nästa stopp"

### Backend (FastAPI)

- Ta emot stoppdata (lat, lon, antal brevlådor, route-id, tid)
- Spara data i databas
- Returnera sparad rutt

### Databas (MySQL)

- Tabell för rutter
- Tabell för stopp (brevlådor)

---

## 5. Vad som INTE ingår i MVP

- Automatisk ruttoptimering
- Inloggning / användarhantering
- Offline-stöd
- Redigering av stopp
- iOS-app
- Avancerad UI-design
- AI / ML-funktionalitet

---

## 6. Definition av klar MVP

MVP anses klar när:

- En rutt kan köras från start till slut
- Minst tre brevlådsstopp kan markeras
- Data sparas korrekt i backend
- Rutten kan visas igen vid senare tillfälle
- En enkel demo kan visas live

---

## 7. Mål med MVP

- Visa att tekniken fungerar
- Visa potential för effektivare utdelning
- Skapa beslutsunderlag för vidare utveckling

---

## 8. Avgränsning

Denna MVP är ett tekniskt och funktionellt bevis och är inte avsedd för produktion eller bred utrullning.
