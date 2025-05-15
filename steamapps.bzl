load("@rules_steam//:steam.bzl", "steam_app")

BUILD_palworld_dedicated_server = "18291249"

def repos(ctx):
    steam_app(
        name = "palworld_dedicated_server",
        depots = [
            {"app": "2394010", "depot": "1006", "manifest": "7138471031118904166"},
            {"app": "2394010", "depot": "2394012", "manifest": "7828355383304947"},
        ],
    )

steamapps_bzlmod = module_extension(implementation = repos)
