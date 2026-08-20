# PlaylistDL

## Installation

Install the PlaylistDL App from the Home Assistant App Store.

After installation, configure:

- Admin username
- Admin password
- Download directory
- Cleanup interval

The default download directory is:

/share/playlistdl

## Access

After starting the App, click "OPEN WEB UI".

Alternatively:

http://HOME_ASSISTANT_IP:4827

## Downloading a playlist

1. Open PlaylistDL.
2. Click Admin.
3. Enter your configured credentials.
4. Paste the Spotify playlist URL.
5. Start the download.
6. Files will be saved under `/share/playlistdl`.

## Spotify

PlaylistDL uses spotDL for Spotify URLs.

The audio itself is obtained through the providers supported by
spotDL; Spotify is used for playlist and metadata information.

## Troubleshooting

If the App does not start, check:

Home Assistant → Settings → System → Logs → Supervisor

Also check the PlaylistDL App logs.

## Architecture limitation

The current upstream Docker image is amd64 only.