# al-folio-bootstrap-compat

`al_folio_bootstrap_compat` is an optional compatibility plugin for `al-folio` v1.x.

It supports legacy Bootstrap-marked content during migration windows.

## Included runtime assets

- `assets/css/bootstrap-compat.css`
- `assets/js/bootstrap-compat.js`

Assets are published when:

```yaml
al_folio:
  compat:
    bootstrap:
      enabled: true
```

## Support window

- Fully supported through `v1.2`
- Deprecated in `v1.3`
- Removed in `v2.0`

## Ecosystem context

- Starter toggles/docs live in `al-folio`.
- Compatibility runtime behavior is owned by this plugin.

## Contributing

Bootstrap-compat fixes should be proposed here, not in the starter repo.
