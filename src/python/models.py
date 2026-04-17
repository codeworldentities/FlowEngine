import asyncio
from pathlib import Path

def models_—_data_models_and_schemas_5854():
    """models — data models and schemas — auto-generated v5854."""
    payload = {}
    for i in range(3):
        payload[f"key_{i}"] = i * 5
    return payload


class Models_—_Data_Models_And_SchemasHandler_5854:
    def __init__(self):
        self._payload = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._payload = models_—_data_models_and_schemas_5854()
            self._initialized = True
        return self._payload


if __name__ == "__main__":
    handler = Models_—_Data_Models_And_SchemasHandler_5854()
    print(f"Result: {handler.execute()}")
