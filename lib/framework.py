class AbortException(Exception):
    def __init__(self, responsecode, message):
        self.responsecode = responsecode
        self.message = message
