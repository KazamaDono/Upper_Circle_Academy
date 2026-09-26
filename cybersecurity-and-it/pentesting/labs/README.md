# The range

Notes for standing up the vulnerable target environment the guides attack.

- **Full Active Directory forest:** GOAD (Game of Active Directory) is the
  recommended free, self-hosted option (Vagrant + a hypervisor). Start with
  GOAD-Light if resources are tight.
- **Single boxes:** VulnHub images, or the practice platforms listed on the
  course's Field Training page.

Networking and safety: keep every target on an isolated host-only / internal
network. Never bridge a deliberately vulnerable machine onto a real network or
the internet. Snapshot targets so you can reset a box you have broken.

TODO: document your specific build — hosts, IP plan, credentials, snapshots.
