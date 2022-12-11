Del 1 - DevOps-prinsipper

* Hva er utfordringene med dagens systemutviklingsprosess - og hvordan vil innføring av DevOps kunne være med på å løse disse? Hvilke DevOps prinsipper blir brutt?

Shopifly virker som et selskap som har tatt noen steg i feil retning når det kommer til å modernisere sine prosesser og samtidig holde det ryddig og effektivt. Ved å deploye kode hver mandag i kvartalet så er hyppigheten så lav at hele prinsippen med “continous flow” forsvinner litt. Med DevOps kultur ønsker vi at alt skal være mindre kompleks, bedre flyt og hurtigere problemløsning. Kanskje det er vanskeligere å kunne oppdage og løse potensielle problemer som kan oppstå ved slik sjeldent deploying? 
Shopifly pr nå bryter følgende DevOps prinsipper:
- Continous flow
- Redusere WIP
- Forårsaker antageligvis mye “venting” 
- Fare for større og mer alvorlige feil med sjelden deployment
 
 

* En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig, og samtidig forsøke å legge på mer kontroll og QA. Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan være en bedre tilnærming?

Å gjøre det mindre hyppig vil sannsynligvis gjøre mer vondt enn godt. I stedet for å legge fokus på kontroll og QA hadde det antageligvis vært med gunstig med bedre kommunikasjonsnivå mellom arbeidsgrupper. Et nøkkelpunkt bak DevOps er selvfølgelig samarbeid. Både dev team og OP team burde smelte sammen til et sterkere og mer funksjonelt team med bedre kommunikasjon, deler hyppig feedback og samarbeider gjennom hele utvikling og deployments syklusen. I mange tilfeller burde dette være bare ET team som jobber sammen fra start til slutt. 
Dersom det blir underlagt mer kontroll hadde det krev mer ressurser og mere tid. Dette er svært unødvendig når alt antageligvis kunne vært unngått med å gjøre ovennevnte.
 
 
 
* Teamet overleverer kode til en annen avdelng som har ansvar for drift - hva er utfordringen med dette ut ifra et DevOps perspektiv, og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?

Jeg nevnte allerede mye om dette i forrige oppgave, men hele poenget med DevOps filosofien er at ting skal ha god flyt, vært automatisert og redusere kompleksitet. Ved å ha to forskjellige avdelinger på denne måten brytes svært mange av DevOps prinsippene som vi absolutt ikke ønsker å bryte. Det kommer til å oppstå mye forvirring og unødvendig vanskeligheter og feil som fint kunne vært unngått med å heller smelte sammen til et team. 
De ansatte i et DevOps team er ansvarlig for at alle fronter av produktet skal være av ypperste kvalitet. Ved å bruke et team som “full-stack” utvikling hvor teamet eier alt fra backend til frontend vil forårsake større investering og tilknytning fra teamet som igjen leder til høyere kvalitets produkt.
 
 
 
* Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å redusere eller fjerne risiko ved hyppige leveraner.

En effektiv og trygg måte å redusere risiko på er å benytte seg av CI/CD pipeline som automatisk validerer kode og overvåker infrastruktur. Ved konstant automatisk testing av produktet vil svært mange problemer forsvinne av seg selv, nemlig fordi det skjer automatisk! 
Vi ønsker også å benytte oss av monitoring. Her kan vi overvåke CPU, minne og disk bruk. Med avansert monitoring så tenker vi mer på å lese av antall 400-series web errors som dukker opp, hvor lenge en side bruker å laste, osv. Ved å benytte oss av dette ved hver deployment så kan overvåke om noe oppfører seg uforutsigbart og vi kan kjapt ta en avgjørelse om vi ønsker å kjøre en rollback og dette med svært lite kost!


---------------------------------------------------------------------------------------------------------------------------------------------------------------------


Del 2 - CI

* Oppgave 1

La til :
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

Kjører nå på hver push eller pull request.


* Oppgave 2

Endret testinnhold fra [100] til [0]. 
0 var forventet antall carts etter mann går videre til checkout.


* Oppgave 3

Aktiverte branch control via github settings i repo mitt. Er nå aktivt på "main" branch.
Krever minst 1 PR for godkjent merge.

//// HUSK Å SETTE DETTE PÅ IGJEN!!!!!!!! ////
//// SKRUDD AV FOR ENKLERE FREMGANG!!!!! ////


---------------------------------------------------------------------------------------------------------------------------------------------------------------------


Del 3 - Docker

* Oppgave 1

I "docker.yml" så legger jeg merke til secrets som er kalt DOCKER_HUB_TOKEN og DOCKER_HUB_USERNAME.
Gikk deretter inn i github repo og lagde nye secrets for begge to. En med brukernavn og en med access token.
docker.yml builder nå OK i Github Actions.


* Oppgave 2

Fikset med å sørge for at alt kjører på JDK 11 istedenfor JDK 8. Actions kjører OK.


* Oppgave 3

Ok, lgtm. Actions kjører fortsatt OK. Publiserer til ECR med git hash.

//// Beskriv deretter med egne ord hva sensor må gjøre for å få sin fork til å laste opp container image til sitt eget ECR repo. ////


---------------------------------------------------------------------------------------------------------------------------------------------------------------------


Del 4 - Metrics, overvåkning og alarmer

* Oppgave 1

OK. Terraform workflow kjører også OK i github actions! Vet ikke hva mer smart jeg kan skrive her =)



* Oppgave 2




---------------------------------------------------------------------------------------------------------------------------------------------------------------------


Del 5 - Terraform og CloudWatch Dashboards

* Oppgave 1

testing


* Oppgave 2

OK. La til <if: github.event_name == 'pull_request'> under Terraform Plan og <if: github.ref == 'refs/heads/main' && github.event_name == 'push'> under Terraform Apply.


* Oppgave 3

testing