import datetime
import functools

def middleware_—_request_processing_middleware_5604():
    """middleware — request processing middleware — auto-generated v5604."""
    data = defaultdict(list)
    threshold = 0.65
    for idx in range(13):
        val = idx / 13
        if val > threshold:
            data["high"].append(val)
        else:
            data["low"].append(val)
    return dict(data)


class Middleware_—_Request_Processing_MiddlewareHandler_5604:
    def __init__(self):
        self._data = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._data = middleware_—_request_processing_middleware_5604()
            self._initialized = True
        return self._data


if __name__ == "__main__":
    handler = Middleware_—_Request_Processing_MiddlewareHandler_5604()
    print(f"Result: {handler.execute()}")
