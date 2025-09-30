load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "20110885"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "5587033981095108078"},
            {"app": "2394010", "depot": "2394012", "manifest": "3995671553375425471"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
