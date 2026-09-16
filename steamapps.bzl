load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "25247047"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "4559160656493359681"},
            {"app": "2394010", "depot": "2394012", "manifest": "7031055933861146620"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
