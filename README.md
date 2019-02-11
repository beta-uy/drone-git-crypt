# Usage

```yaml
kind: pipeline
name: deploy

steps:
  - name: unlock-secrets
    image: betalabs/drone-git-crypt
    pull: always
    environment:
      GIT_CRYPT_KEY:
        from_secret: git-crypt-key
```

