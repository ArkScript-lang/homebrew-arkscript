# Homebrew ArkScript

## How do I install these formulae?

`brew install arkscript-lang/arkscript/<formula>`

Or `brew tap arkscript-lang/arkscript` and then `brew install <formula>`.

You will need to update your `DYLD_LIBRARY_PATH` so that `arkscript` can find its `libArkReactor`:
```shell
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/homebrew/lib
```

Add `ARKSCRIPT_PATH` to your profile script (bashrc, zshrc, fishrc...):
```shell
export ARKSCRIPT_PATH=/usr/local/lib/Ark
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Developer documentation

### Adding a new release

1. Run `python3 create_formula.py v[X.Y.Z]`
   - it will create a new formula in `arkscript@X.Y.Z.rb`,
   - update `arkscript.rb`.
2. Commit and push the changes
