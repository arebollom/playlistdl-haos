# PlaylistDL Home Assistant

Home Assistant App wrapper for PlaylistDL.

Original project:

https://github.com/TannerNelson16/playlistdl

This app provides a web interface for downloading Spotify and YouTube
playlists using spotDL and yt-dlp.

## Architecture

Currently supports amd64 only because the upstream PlaylistDL Docker
image is currently published for linux/amd64.

## Web interface

The application is exposed on port 4827.

## Downloads

Downloads are stored under:

/share/playlistdl

The application organizes downloads by artist and album.

## Legal

Use this application only to download media that you are authorized
to download. Respect copyright and the terms of the services you use.