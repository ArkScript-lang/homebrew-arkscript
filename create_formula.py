import sys


def main(args):
    if not args:
        print(f"Usage: {__file__} version")
        print("  version: v1.2.3")
        return 0

    version = args[0]
    suffix = version.replace("v", "").replace(".", "")

    with open("template/arkscript_formula.rb", "r") as f:
        template = f.read()

    with open(f"arkscript@{version}.rb", "w") as f:
        f.write(template.format(
            suffix=f"At{suffix}",
            version=version
        ))
    with open("arkscript.rb", "w") as f:
        f.write(template.format(
            suffix="",
            version=version
        ))

    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
