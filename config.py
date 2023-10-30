from beret_utils import get_config
from beret_utils.config import bool_value, EnvValue
from beret_utils import PathData

PROJECT_NAME = "cityexplorer_api"

base_dir = PathData.main()
home_dir = PathData.home()


DEFAULT_SETTINGS = (
   ("POSTGRES_DB", "arteunite_wagtail"),
   ("POSTGRES_USER", "admin"),
   ("POSTGRES_PASSWORD", "password"),
   ("POSTGRES_HOST", "localhost"),
   ("POSTGRES_PORT", 5432, int),
   ("PORT", 8082, int),
   ("CELERY_BROKER_URL", "amqp://localhost"),
   ("DEBUG", 1, bool_value),
   ("SECRET_KEY", "j23nadaje"),
   ("TZ", "Europe/Warsaw"),
   ("LANGUAGE_CODE", "pl")
)

ENV_FILE = (
    '.local.env',
)


ConfigClass = get_config(DEFAULT_SETTINGS, ENV_FILE)
config = ConfigClass()

if __name__ == '__main__':
   for key, value in config.items():
       print(f"{key} = {value}")