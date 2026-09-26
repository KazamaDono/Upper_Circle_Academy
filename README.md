# Upper Circle Academy — Field Lab Toolkit

Companion infrastructure for the UCAP **Penetration Testing** path
(<https://connectedummah.lovable.app/academy/pentesting>). The in-browser
course teaches the workflow with simulated labs; this repository is the bridge
to a real, self-hosted range: a containerised attacker toolbox published to the
GitHub Container Registry, plus lab guides and quick-reference cheat-sheets for
practising against vulnerable machines you control.

## Authorised, educational use only

Everything here is for learning offensive security against systems you **own or
are explicitly authorised to test** — your own isolated lab VMs and the
deliberately vulnerable ranges named in the guides. Using these tools against
any system without written authorisation is illegal in most jurisdictions. Keep
vulnerable labs isolated from your real network and the internet (host-only or
internal networking, never bridged).

## What's here

| Path | Purpose |
| --- | --- |
| `Dockerfile` | The attacker toolbox image — a curated set of standard, open-source security tools. |
| `.github/workflows/build-image.yml` | GitHub Actions pipeline that builds the image and pushes it to GHCR. No local Docker needed; the image is built in CI. |
| `docker-compose.yml` | Convenience wrapper to run (or build) the toolbox locally. |
| `guides/` | Step-by-step lab walkthroughs, mapped to the course modules (authored content — see the folder). |
| `cheatsheets/` | Quick-reference Windows/AD command sheets (authored content). |
| `labs/` | How to stand up the vulnerable target range. |

## Using the toolbox image

After the workflow runs on `main`, the image is available from GHCR. (New GHCR
packages are private by default — make it public, or keep it private and
authenticate, from the repository's **Packages** settings.)

```bash
docker pull ghcr.io/kazamadono/uca-toolbox:latest
docker run -it --rm --network host ghcr.io/kazamadono/uca-toolbox:latest
```

### What's in the image

- **Network / recon:** nmap, netcat, dnsutils, ldap-utils, smbclient
- **Active Directory:** Impacket, NetExec (nxc), Certipy, BloodHound.py, ldapdomaindump, Coercer, Responder
- **Credentials:** John the Ripper, Hydra
- **Wordlists:** SecLists

Extend it by editing `Dockerfile` and pushing to `main`; CI rebuilds and
republishes automatically. SecLists is the bulk of the image size — drop that
line for a leaner image if you prefer to mount wordlists at runtime.

## Building locally (optional)

```bash
docker build -t uca-toolbox .
docker run -it --rm uca-toolbox
# or:
docker compose run --rm toolbox
```

## License

TODO: add a license of your choice (for example MIT). Until one is added, this
repository is All Rights Reserved by default.
