# Konklusion

At reducere `--max-model-len` fra 262K → 32K mindsker hukommelsesforbruget med 8× og øger samtidigheden med ca. 10×.

**Kontekstens længde bestemmer direkte KV-cache-hukommelse:**
- Ved 262K: ~40 GB pr. forespørgsel → maks. 2 samtidige brugere
- Ved 32K: ~5 GB pr. forespørgsel → op til 12–15 samtidige brugere
