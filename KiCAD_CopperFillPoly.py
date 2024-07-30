#!/usr/bin/env python 
import math
import uuid

def draw_slotted_arc(center, inner_radius, outer_radius, slot_angle, angle_offset):
  start_angle = math.radians(angle_offset) # radians
  angle = math.radians(slot_angle) # radians
    
  start = {'x': math.cos(start_angle - angle/2), 'y': -1 * math.sin(start_angle - angle/2)}
  mid = {'x': math.cos(start_angle), 'y': -1 * math.sin(start_angle)}
  end = {'x': math.cos(start_angle + angle/2), 'y': -1 * math.sin(start_angle + angle/2)}
  endcap_angle_offset = 2 * math.asin((outer_radius - inner_radius) / 2 / (outer_radius + inner_radius))
  endcap_mid_end = {'x': math.cos(start_angle + angle/2 + endcap_angle_offset), 'y': -1 * math.sin(start_angle + angle/2 + endcap_angle_offset)}
  endcap_mid_start = {'x': math.cos(start_angle - angle/2 - endcap_angle_offset), 'y': -1 * math.sin(start_angle - angle/2 - endcap_angle_offset)}

  for radius in [inner_radius, outer_radius]:
    print(
      f'\t(gr_arc\n\t\t(start {start["x"]*radius+center["x"]:.6f} {start["y"]*radius+center["y"]:.6f})\n\t\t(mid {mid["x"]*radius+center["x"]:.6f} {mid["y"]*radius+center["y"]:.6f})\n\t\t(end {end["x"]*radius+center["x"]:.6f} {end["y"]*radius+center["y"]:.6f})\n\t\t(stroke\n\t\t\t(width 0.15)\n\t\t\t(type solid)\n\t\t)\n\t\t(layer Edge.Cuts)\n\t\t(uuid "{uuid.uuid4()}")\n\t)'
    )
  print(
    f'\t(gr_arc\n\t\t(start {end["x"]*outer_radius+center["x"]:.6f} {end["y"]*outer_radius+center["y"]:.6f})\n\t\t(mid {endcap_mid_end["x"]*(inner_radius+outer_radius)/2+center["x"]:.6f} {endcap_mid_end["y"]*(inner_radius+outer_radius)/2+center["y"]:.6f})\n\t\t(end {end["x"]*inner_radius+center["x"]:.6f} {end["y"]*inner_radius+center["y"]:.6f})\n\t\t(stroke\n\t\t\t(width 0.15)\n\t\t\t(type solid)\n\t\t)\n\t\t(layer Edge.Cuts)\n\t\t(uuid "{uuid.uuid4()}")\n\t)'
  )
  print(
    f'\t(gr_arc\n\t\t(start {start["x"]*outer_radius+center["x"]:.6f} {start["y"]*outer_radius+center["y"]:.6f})\n\t\t(mid {endcap_mid_start["x"]*(inner_radius+outer_radius)/2+center["x"]:.6f} {endcap_mid_start["y"]*(inner_radius+outer_radius)/2+center["y"]:.6f})\n\t\t(end {start["x"]*inner_radius+center["x"]:.6f} {start["y"]*inner_radius+center["y"]:.6f})\n\t\t(stroke\n\t\t\t(width 0.15)\n\t\t\t(type solid)\n\t\t)\n\t\t(layer Edge.Cuts)\n\t\t(uuid "{uuid.uuid4()}")\n\t)'
  )

if __name__ == '__main__':

    center = {'x': 174.0, 'y': 96.0} # x/y coordinates of the centre of the pcb sheet
    inner_radius = 6.5 # mm
    outer_radius = 8 # mm
    angle = 60 # degrees
    
    for offset in [45, 135, 225, 315]:
      draw_slotted_arc(center=center, inner_radius=inner_radius, outer_radius=outer_radius, slot_angle=angle, angle_offset=offset)

