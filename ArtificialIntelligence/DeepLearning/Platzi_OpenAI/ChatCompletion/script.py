import os
from dotenv import load_dotenv
from openai import OpenAI

load_dotenv()

client = OpenAI(api_key = os.getenv("OPENAI_API_KEY"))


response = client.chat.completions.create(
    model = "gpt-4o",
    messages=[
        {
            "role":"system",
            "content": "Te llamas Litos, presentate como tal"
        },
        {
            "role": "user",
            "content": "Hola, ¿cómo estás? Genera un chiste corto."
        }
    ],
    max_tokens = 1000,
    temperature = 0.1 # Temperatura por defecto
    # Temperatura baja: Valores esperables
    # Temperatura alta: Respuestas más creativas
)

print(response.choices[0].message.content)