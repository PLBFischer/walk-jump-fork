import pydantic
from pydantic import Field

# Provide Schema for libraries (like FastAPI) that expect it
if not hasattr(pydantic, "Schema"):
    pydantic.Schema = Field

from walkjump.cmdline import train
from walkjump.cmdline import sample

# Example usage:
if __name__ == "__main__":
    train()
    print("Finished Sampling")
    sample()
    print("Finished Sampling")
