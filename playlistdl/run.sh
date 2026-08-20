#!/bin/sh

set -eu

python3 - <<'PY'
import json
import os

with open("/data/options.json", "r", encoding="utf-8") as f:
    options = json.load(f)

os.environ["ADMIN_USERNAME"] = options.get("admin_username", "admin")
os.environ["ADMIN_PASSWORD"] = options.get("admin_password", "")
os.environ["AUDIO_DOWNLOAD_PATH"] = options.get(
    "audio_download_path",
    "/share/playlistdl"
)
os.environ["CLEANUP_INTERVAL"] = str(
    options.get("cleanup_interval", 300)
)
os.environ["SPOTDL_AUDIO_PROVIDERS"] = options.get(
    "spotdl_audio_providers",
    "youtube"
)
os.environ["SPOTDL_EXTRA_ARGS"] = options.get(
    "spotdl_extra_args",
    ""
)

os.execvpe(
    "python3",
    ["python3", "/app/main.py"],
    os.environ
)
PY