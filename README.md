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

## Developper documentation

### Add a new release

1. Update arkscript.rb to point to the latest ArkScript release
1. Add a new arkscript@version.rb with the same content as arkscript.rb (using the new tag)
1. Replace the alias under Aliases/Arkscript@version by doing: `cd Aliases && rm arkscript@* && ln -s ../arkscript arkscript@version`i

