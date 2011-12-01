Dette er prosjektsiden til Gruppe 48!
Siden benytter seg av scriptspråket Ruby og rammeverket Sinatra.

I mappen views finner man HAML views som brukes til å "generere" HTML. Alt av design har blitt gjort på forhånd i HTML og så blitt konvertert til HAML for å kunne brukes med Ruby.

I lib/ ligger den ene database modellen vår for Artikler. Dette er en DataMapper modell som brukes til å interface med SQLite databasen vår.

public/ inneholder alle statiske filer (CSS, bilder, javascript).

public/css/ inneholder fire forskjellige CSS filer.
  css3.css inneholder all CSS kode vi har skrevet selv men som ikke validerer.
  normalize.css inneholder CSS som resetter alt til å se likt ut i de større mest brukte nettleserne.
  Dette er så siden vår ser mest mulig lik ut. Dette er IKKE kodet av oss.
  normalize.min.css er en minifisert versjon av normalize.css som gjør at siden laster raskere.



All applikasjons logikk ligger i application.rb men dette skal jo ikke vurderes uansett så vidt jeg vet.

Resten av filene og mappene er en del av "rammeverket" vi har brukt og er ikke laget av oss.

Prosjektet holdes styr på ved hjelp av Git.
