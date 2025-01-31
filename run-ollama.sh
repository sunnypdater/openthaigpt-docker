#!/bin/bash

echo "Starting Ollama server..."
ollama serve &


echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done

ollama run hf.co/Thanabordee/openthaigpt1.5-7b-instruct-Q4_K_M-GGUF