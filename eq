# Copyright (C) 2011 Ian Zimmerman <itz@buug.org>

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the conditions spelled out in
# the file LICENSE are met.

#! /bin/sh

exec alsamixer -D equal "$@"
