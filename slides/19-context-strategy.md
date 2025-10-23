# Håndtering af Store Kontekster

I produktionsmiljøer dirigeres forespørgsler med meget store kontekster til en separat højhukommelses-inferens-pulje, styret af en load balancer.

**Dette sikrer:**
- Almindelige forespørgsler forbliver hurtige og parallelle
- Sjældne langkontekst-forespørgsler belaster ikke hele systemet

**Bemærk:** Dette kræver ekstra H100 kort dedikeret til lange kontekster

