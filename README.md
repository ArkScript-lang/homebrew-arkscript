# Homebrew ArkScript

## How do I install these formulae?

`brew install arkscript-lang/arkscript/<formula>`

Or `brew tap arkscript-lang/arkscript` and then `brew install <formula>`.

You will need to update your `DYLD_LIBRARY_PATH` so that `arkscript` can find its `libArkReactor`:
```shell
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/opt/homebrew/lib
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
