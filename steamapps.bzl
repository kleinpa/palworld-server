load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "19134685"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "5587033981095108078"},
            {"app": "2394010", "depot": "2394012", "manifest": "827371074969047862"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
