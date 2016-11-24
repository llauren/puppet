# Class: baseline
# ===========================
#
# Basic settings for all machines. Additions for Debians.
#
# Parameters
# ----------
#
# None
#
# Variables
# ----------
#
# None
#
# Authors
# -------
#
# Robin Laurén <author@domain.com>
#
# Copyright
# ---------
#
# Distributed under ISC License -- see LICENSE
#
class baseline {

  include baseline::puppet

  case $os[family] {
    'Debian': {
      notify { "Applying Debian settings": }
      include baseline::apt
    }
    default: {
      notify { "Unsupported OS family ${os[family]}": }
    }
  }

}
