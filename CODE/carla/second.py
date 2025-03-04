# /CODE/carla/second.py
import argparse
import glob
import os
import random
import sys
import time

import cv2
import matplotlib as plt
import numpy as np

try:
    sys.path.append(
        glob.glob(
            "../carla/dist/carla-*%d.%d-%s.egg"
            % (
                sys.version_info.major,
                sys.version_info.minor,
                "win-amd64" if os.name == "nt" else "linux-x86_64",
            )
        )[0]
    )
except IndexError:
    pass

import carla


def main():
    actorList = []
    try:
        client = carla.Client("localhost", 2000)
        client.set_timeout(10.0)
        world = client.load_world("Town02")
        print(client.get_available_maps())

        blueprint_library = world.get_blueprint_library()

        # vehicle_bp= world.blueprint_library.filter('vehicle.audi.tt') # THIS DONT WORK
        # vehicle_bp= world.get_blueprint_library().find('vehicle.audi.tt')[0] # THIS DONT WORK
        # vehicle_bp = blueprint_library.filter('vehicle.tesla.cybertruck')[0]

        vehicle_bp = world.blueprint_library.filter("vehicle.audi.tt")[0]

        vehicle_bp = world.get_blueprint_library().find("vehicle.audi.tt")  # WORKS

        transform = carla.Transform(
            carla.Location(x=130, y=195, z=40), carla.Rotation(yaw=180)
        )
        vehicle = world.spawn_actor(vehicle_bp, transform)[0]
        actorList.append(vehicle)

        time.sleep(5)
    finally:
        print("deleted actorList")
        client.apply_batch([carla.command.DestroyActor(x) for x in actorList])


if __name__ == "__main__":
    main()


# vehicle_blueprint = world.get_blueprint_library().find('vehicle.audi.tt') --> https://github.com/carla-simulator/carla/blob/43b5e7064872bb6a9529664c2218e29df38dca04/Docs/tuto_G_getting_started.md?plain=1#L235


# bp = random.choice(blueprint_library.filter('vehicle'))

# # A blueprint contains the list of attributes that define a vehicle's
# # instance, we can read them and modify some of them. For instance,
# # let's randomize its color.
# if bp.has_attribute('color'):
#     color = random.choice(bp.get_attribute('color').recommended_values)
#     bp.set_attribute('color', color)


# transform = Transform(Location(x=230, y=195, z=40), Rotation(yaw=180))
# actor = world.spawn_actor(blueprint, transform)
