#!/usr/bin/env python 
import sys, os
import shutil
import math

LIST_pts = ["    (polygon\n      (pts\n        (xy ","    (filled_polygon\n      (pts\n        (xy ",") (xy ",")\n      )\n    )"]


ARC = "  (gr_arc (start {center[x]:.2f} {center[y]:.2f}) (end {start[x]:.2f} {start[y]:.2f}) (angle {angle:.2f}) (layer Edge.Cuts) (width 0.15))"

def draw_slotted_arc(center, inner_radius, outer_radius, slot_angle, angle_offset):
  start_angle = math.radians(45 - slot_angle / 2 + angle_offset) # radians
  angle = math.radians(slot_angle) # radians
    
  start_inner = {'x': inner_radius * math.cos(start_angle) + center['x'], 'y': -1 * inner_radius * math.sin(start_angle) + center['y']}
  start_outer = {'x': outer_radius * math.cos(start_angle) + center['x'], 'y': -1 * outer_radius * math.sin(start_angle) + center['y']}
  center_endcap1 = {'x': (outer_radius + inner_radius) / 2 * math.cos(start_angle) + center['x'], 'y': -1 * (outer_radius + inner_radius) / 2 * math.sin(start_angle) + center['y']}
  center_endcap2 = {'x': (outer_radius + inner_radius) / 2 * math.cos(start_angle + angle) + center['x'], 'y': -1 * (outer_radius + inner_radius) / 2 * math.sin(start_angle + angle) + center['y']}
  start_endcap2 = {'x': outer_radius * math.cos(start_angle + angle) + center['x'], 'y': -1 * outer_radius * math.sin(start_angle + angle) + center['y']}

  print(ARC.format(center=center, start=start_inner, angle=-1*math.degrees(angle)))
  print(ARC.format(center=center, start=start_outer, angle=-1*math.degrees(angle)))
  print(ARC.format(center=center_endcap1, start=start_inner, angle=-180))
  print(ARC.format(center=center_endcap2, start=start_endcap2, angle=-180))


if __name__ == '__main__':

    center = {'x': 150.0, 'y': 95.0} # x/y coordinates of the centre of the pcb sheet
    inner_radius = 6.5 # mm
    outer_radius = 8 # mm
    angle = 60 # degrees
    
    for offset in [0, 90, 180, 270]:
      draw_slotted_arc(center=center, inner_radius=inner_radius, outer_radius=outer_radius, slot_angle=angle, angle_offset=offset)

