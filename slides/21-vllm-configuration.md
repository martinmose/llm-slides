# Den Svære Del: vLLM Parametre

```bash
vllm serve \
  --model Qwen/Qwen3-Coder-30B-A3B-Instruct \
  --gpu-memory-utilization 0.95 \
  --max-model-len 262144 \
  --max-num-seqs 32 \
  --max-num-batched-tokens 65536 \
  --enable-chunked-prefill \
  --disable-log-requests \
  --enable-auto-tool-choice \
  --tool-call-parser qwen3_coder \
  --tensor-parallel-size 1
```

- Finde den rette balance mellem throughput og hukommelse
- Tuning til lange context vinduer (262k tokens)
- Optimering af batch processing parametre
