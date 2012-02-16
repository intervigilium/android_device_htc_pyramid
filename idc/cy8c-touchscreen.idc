# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Input Device Calibration File for the Sensation touch screen.
#
# These calibration values are derived from empirical measurements
# and may not be appropriate for use with other touch screens.
# Refer to the input device calibration documentation for more details.
#

# Basic Parameters
touch.deviceType = touchScreen
touch.orientationAware = 1

# Touch Size
touch.touchSize.calibration = pressure

#SGS2 way
# Tool Size
# Driver reports tool size as an area measurement.
#
# Based on empirical measurements, we estimate the size of the tool
# using size = sqrt(22 * rawToolArea + 0) * 9.2 + 0.
#touch.toolSize.calibration = area
#touch.toolSize.areaScale = 22
#touch.toolSize.areaBias = 0
#touch.toolSize.linearScale = 9.2
#touch.toolSize.linearBias = 0
#touch.toolSize.isSummed = 0

#Sensation-GB way
# Tool Size
# Driver reports tool size as a linear width measurement summed over
# all contact points.
#
# Raw width field measures approx. 1 unit per millimeter
# of tool size on the surface where a raw width of 1 corresponds
# to about 17mm of physical size.  Given that the display resolution
# is 10px per mm we obtain a scale factor of 10 pixels / unit and
# a bias of 160 pixels.  In addition, the raw width represents a
# sum of all contact area so we note this fact in the calibration.
#touch.toolSize.calibration = linear
#touch.toolSize.linearScale = 10
#touch.toolSize.linearBias = 160
#touch.toolSize.isSummed = 1

#Merged Sensation ICS way
# Driver reports tool size as a linear width measurement summed over
# all contact points.
#
# Raw width field measures approx. 1 unit per millimeter
# of tool size on the surface where a raw width of 1 corresponds
# to about 17mm of physical size.  Given that the display resolution
# is 10px per mm we obtain a scale factor of 10 pixels / unit and
# a bias of 160 pixels.  In addition, the raw width represents a
# sum of all contact area so we note this fact in the calibration.
touch.toolSize.calibration = diameter
touch.toolSize.linearScale = 10
touch.toolSize.linearBias = 160
touch.toolSize.isSummed = 1


# Pressure
# Driver reports signal strength as pressure.
#
# A normal thumb touch typically registers about 100 signal strength
# units although we don't expect these values to be accurate.
touch.pressure.calibration = amplitude
touch.pressure.source = default
touch.pressure.scale = 0.01

# Size
touch.size.calibration = normalized

# Orientation
touch.orientation.calibration = none

