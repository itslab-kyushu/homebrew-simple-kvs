#
# simple-kvs.rb
#
# Copyright (c) 2017 Junpei Kawamoto
#
# This file is part of simple-kvs.
#
# simple-kvs is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# simple-kvs is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with simple-kvs.  If not, see <http:#www.gnu.org/licenses/>.
#
class Simple-Kvs < Formula
  desc "Simple Key-Value Storage"
  homepage "https://github.com/itslab-kyushu/simple-kvs"
  version "0.1.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/itslab-kyushu/simple-kvs/releases/download/v0.1.0/kvs_0.1.0_darwin_amd64.zip"
    sha256 "547a12f0687236b878084d35d7fe47d47614658fdbcc865ca54ff057ef2090c4"
  else
    url "https://github.com/itslab-kyushu/simple-kvs/releases/download/v0.1.0/kvs_0.1.0_darwin_386.zip"
    sha256 "83364734dc3bedffb975e90a2b3c4a2fbc41e9e951eef51e9e2cf51708894f79"
  end

  def install
    bin.install "simple-kvs"
  end

  test do
    system "simple-kvs"
  end

end
