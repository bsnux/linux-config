#!/bin/bash
ctags -R --python-kinds=-i --exclude=.venv/* --exclude=static_collected/* --exclude=media_*/* --exclude=docs/*
