# VRAM Beregninger: Den Vanskelige Del

- Modelstørrelse er ligetil at beregne
- Men hvor meget "ekstra" VRAM er nødvendig til KV cache?
- KV cache vokser med context længde og samtidige requests
- Dette er den svære del at forudsige og optimere
- For lidt = OOM fejl, for meget = spildt kapacitet
