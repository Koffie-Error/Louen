# Louen — Verjaardag (7 jaar)

Kleine statische homepage om Louen's 7e verjaardag te vieren.

Preview lokaal:

```bash
# vanuit de map `louen-birthday`
python3 -m http.server 3000
# of, als je `serve` hebt:
npx serve -s . -l 3000
```

Open dan: http://localhost:3000

Volgende stappen:
- vervang `assets/louen-photo.svg` of `assets/unicorn.svg` met een echte foto/illustratie (zelfde bestandsnaam of pas `index.html` aan)
- exacte locatie-gegevens of contactgegevens voor RSVP invullen (nu: `Strandcafé Buiten, Amsterdam` en `els@example.com`)
- ik heb een printbare uitnodiging toegevoegd (`invitation.html`) en een simpel RSVP-formulier dat een mailto opent en lokaal opslaat.

Als je wilt, kan ik:
- het formulier opslaan naar een Google Sheet of een echte backend instellen
- een uploadformulier toevoegen zodat je direct een foto kunt uploaden
- de tekst naar wens aanpassen

Deployen naar Vercel
--------------------

1. Zorg dat je ingelogd bent bij Vercel (`npm i -g vercel` en `vercel login`).
2. Ga naar de map `louen-birthday` en voer uit:

```bash
./deploy.sh
```

Het script maakt eerst een preview-deploy; beantwoord de prompt met `y` om ook direct een production-deploy te doen.

Opmerkingen:
- Je kunt de map ook in een GitHub repo zetten en Vercel verbinden voor automatische deploys.
- Als je wil, kan ik de productie-deploy voor je uitvoeren als je een Vercel-team token en toestemming geeft.
