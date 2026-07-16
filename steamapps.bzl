load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "24181105"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "6403079453713498174"},
            {"app": "2394010", "depot": "2394012", "manifest": "2167164727892555341"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
