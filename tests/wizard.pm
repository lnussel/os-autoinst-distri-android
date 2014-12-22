# Copyright (C) 2014 SUSE Linux GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program; if not, write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

use base "basetest";
use strict;
use testapi;

sub run {
    assert_screen "welcome-wizard", 180;

    assert_and_click "next-button-wizard";

    assert_screen "wifi-wizard", 180;
    send_key "down";
    send_key "down";
    send_key "ret";
    assert_screen "wifi-wizard-warning-popup", 5;
    send_key "ret";

    assert_screen "google-account-wizard", 30;
    send_key "down";
    send_key "ret";

    assert_screen "google-account-wizard2", 30;
    send_key "down";
    send_key "down";
    send_key "ret";

    assert_screen "location-wizard", 30;
    send_key "right";
    send_key "ret";

    assert_screen "datetime-wizard", 30;
    send_key "down";
    send_key "right";
    send_key "ret";

    assert_screen "personalize-wizard", 30;
    type_string "Joe\n";
    type_string "Sixpack\n";

    assert_screen "google-wizard", 30;
    send_key "right";
    send_key "right";
    send_key "ret";
}

sub test_flags {
    return { fatal => 1 };
}

1;

# vim: set sw=4 et:
