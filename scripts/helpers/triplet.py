import platform

TRIPLET_OSS = {
    'Darwin': 'osx',
    'Linux': 'linux',
}

TRIPLET_ARCHS = {
    'x86_64': 'x64',
    'arm64': 'arm64',
    'aarch64': 'arm64',
}

def platform_triplet(release: bool=True):
    arch = TRIPLET_ARCHS.get(platform.machine(), None)
    os = TRIPLET_OSS.get(platform.system(), None)
    return '-'.join([arch, os, *(['release'] if release else [])]) if os and arch else None
