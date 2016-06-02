#!/bin/sh

sed 's/FROM node:4/FROM hypriot\/rpi-node:4/g' Dockerfile > Dockerfile-rpi