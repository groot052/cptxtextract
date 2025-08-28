import os
from os import getenv


API_ID = int(getenv("API_ID", 20531922))
API_HASH = getenv("API_HASH", "1281c125a3e908948a9a64a58099a2f3")
BOT_TOKEN = getenv("BOT_TOKEN", "8021957130:AAE-6wO_zO9YTeYj2BUNO2LoP7p_gDlV-YI")
OWNER_ID = int(getenv("OWNER_ID", "5240924887"))
SUDO_USERS = list(map(int, getenv("SUDO_USERS", "").split()))
MONGO_URL = getenv("MONGO_DB", "mongodb+srv://mikemam844_db_user:Rli04bI9VooF09Pj@cluster0.cyqkgos.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")
CHANNEL_ID = int(getenv("CHANNEL_ID", "-1001756424268"))
