# Upper Circle Academy

[![Build and publish toolbox image](https://github.com/KazamaDono/Upper_Circle_Academy/actions/workflows/build-image.yml/badge.svg)](https://github.com/KazamaDono/Upper_Circle_Academy/actions/workflows/build-image.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> Hands-on labs, toolboxes and field guides that pair with the courses on
> [Upper Circle](https://uppercircle.online/academy).

Companion infrastructure for the **UC Academy Accelerated Programs (UCAP)**. The
courses on the site teach each skill in the browser; this repository is the
bridge to real practice — containerised toolboxes, self-hosted lab guides and
quick-reference cheat-sheets, organised exactly like the Academy itself.

## Structure

The repository mirrors the Academy's layout on the site: each **branch** (a
field of study) is a top-level folder, and each **course** within it is a
subfolder carrying its own toolbox, labs and resources.

```
.
├─ cybersecurity-and-it/        Branch — Cyber Security & IT
│  ├─ pentesting/               Course — Penetration Testing (CY-01)
│  │  ├─ Dockerfile             Attacker-toolbox image
│  │  ├─ docker-compose.yml
│  │  ├─ guides/                Lab walkthroughs
│  │  ├─ cheatsheets/           Windows/AD quick reference
│  │  └─ labs/                  Range setup
│  └─ exploit-development/      Course — Exploit Development (CY-04)
│     ├─ chNN-slug/             Per-chapter code + Makefile (make test)
│     ├─ common/                Shared harness helpers
│     ├─ lab/                   Pinned Ubuntu 24.04 toolchain image
│     └─ scripts/               lab.sh, doctor.sh, build-all.sh, test-all.sh
└─ .github/workflows/           CI — build and publish toolbox images to GHCR
```

New branches and courses are added as sibling folders as they come online.

## Branches

| Branch | Folder | Courses |
| --- | --- | --- |
| Cyber Security & IT | [`cybersecurity-and-it/`](cybersecurity-and-it/) | Penetration Testing — [`pentesting/`](cybersecurity-and-it/pentesting/) · Exploit Development — [`exploit-development/`](cybersecurity-and-it/exploit-development/) |

## Toolbox images

Each course's toolbox is built and published to the GitHub Container Registry by
CI on every change:

```bash
docker pull ghcr.io/kazamadono/uca-pentesting-toolbox:latest
docker pull ghcr.io/kazamadono/uca-exploit-development-toolbox:latest
```

Each course README ([Penetration Testing](cybersecurity-and-it/pentesting/),
[Exploit Development](cybersecurity-and-it/exploit-development/)) lists the full
toolset and usage. (New GHCR packages are private by default — make them public,
or keep them private and authenticate, from the repository's Packages settings.)

## Authorised, educational use only

Everything in this repository is for learning against systems you own or are
explicitly authorised to test — your own isolated lab machines and the
deliberately vulnerable ranges named in the guides. Using these tools or
techniques against systems you do not own or have written permission to test is
illegal in most jurisdictions. Keep vulnerable labs isolated from real networks
and the internet.

## License

Released under the [MIT License](LICENSE).
