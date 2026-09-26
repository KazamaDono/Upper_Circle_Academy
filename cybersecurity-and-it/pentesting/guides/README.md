# Lab guides

Step-by-step walkthroughs for the self-hosted range, each mapped to a module of
the UCAP Penetration Testing path. This is authored content — the operational
detail lives here, written by you, against your own authorised lab.

Suggested set (one file each):

- `01-build-the-range.md` — stand up the vulnerable target environment (see `../labs`)
- `02-foothold-to-domain-user.md`
- `03-ad-cs-esc1.md` — companion to module PT-16 (AD CS)
- `04-kerberos-delegation.md` — PT-17
- `05-mssql-ad.md` — PT-18
- `06-credential-access.md` — PT-19
- `07-lateral-movement-and-c2.md`
- `08-persistence-and-domain-dominance.md`

Recommended shape for each guide: **objective → prerequisites → steps (the exact
commands you run against your lab) → expected output → detection notes →
clean-up**. Keep every action scoped to isolated, authorised lab targets.

TODO: author the guides.
