# docker-template

Template repository for Blink Labs Docker image repositories.

Create a new `docker-*` repository from this template to get a consistent
starting point: a `Dockerfile`, sensible ignores, dependency automation, and
code ownership. CI/CD workflows are managed centrally by
[blinklabs-io/actions](https://github.com/blinklabs-io/actions) — you do not
add or edit workflow files here.

## Using this template

1. Click **Use this template** on GitHub (or create a new repo from it) and
   name it `docker-<service>`.
2. Replace the contents of [`Dockerfile`](Dockerfile) with the build for your
   image.
3. Update [`README.md`](README.md) to describe the image.
4. Opt the repository into central governance (see below) so CI, publish, and
   housekeeping workflows are generated for you.

## Central CI/CD

Workflows such as `ci-docker.yml`, `publish.yml`, and `conventional-commits.yml`
are **generated and reconciled** by the governance engine in
[blinklabs-io/actions](https://github.com/blinklabs-io/actions). They are
written directly to the default branch and carry a
`# Generated automatically ... Do not edit manually.` header. Do not commit
these files by hand — they will be overwritten.

## Opting into governance

This repository opts in via the marker file
[`.blinklabs/profile.yml`](.blinklabs/profile.yml):

```yaml
profile: docker-standard
vars:
  image: template
  description: "Template Docker image — replace me"
```

When you create a repository from this template, update `image` and
`description` to match your service. The governance engine discovers the
repository from this marker and applies the named profile. See the
**Auto-discovery** section of
[blinklabs-io/actions](https://github.com/blinklabs-io/actions) for the full
marker schema and available overrides.

## Repository layout

| Path | Purpose |
|---|---|
| `Dockerfile` | The image build. Replace with your service's build. |
| `.dockerignore` | Keeps repository metadata out of the build context. |
| `.blinklabs/profile.yml` | Governance marker: profile + template variables. |
| `.github/CODEOWNERS` | Default reviewers for the repository. |
| `.github/dependabot.yml` | Weekly Docker and GitHub Actions update checks. |
