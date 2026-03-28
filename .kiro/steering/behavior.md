# cheatsheets

> For global standards, way-of-workings, and pre-commit checklist, see `~/.kiro/steering/behavior.md`

## Role

Web developer and DevOps engineer.

## What This Does

Collection of custom cheatsheets for personal Linux desktop setup. Static site deployed to Cloudflare Pages via Terraform.

## Repository Structure

- `src/` — Static site source (HTML/CSS/JS with npm)
- `terraform/` — Cloudflare Pages project, DNS
- `Makefile` — `init`, `plan`, `apply`, `decrypt`, `encrypt`

## Terraform Details

- Backend: S3 key `cheatsheets.tfstate` in `mdekort-tfstate-075673041815`
- Secrets: KMS context `target=cheatsheets`

## Related Repositories

- `~/src/melvyndekort/tf-cloudflare` — DNS and API tokens
