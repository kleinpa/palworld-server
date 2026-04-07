load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "22460594"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "6403079453713498174"},
            {"app": "2394010", "depot": "2394012", "manifest": "5125159522749666228"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
