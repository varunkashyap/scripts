#!/usr/bin/env bash

function print_stderr() { echo "$@" 1>&2; }

wget "http://www.scala-lang.org/files/archive/scala-$1.tgz"

if (($?)) 
then
	print_stderr "Couldn't find Scala archive at the created link. Make sure the path hasn't changed on scala site"
	exit 1
fi

tar zxf "scala-$1.tgz"
sudo mv "scala-$1" /usr/share/scala

sudo ln -s /usr/share/scala/bin/scala /usr/bin/scala
sudo ln -s /usr/share/scala/bin/scalac /usr/bin/scalac
sudo ln -s /usr/share/scala/bin/fsc /usr/bin/fsc
sudo ln -s /usr/share/scala/bin/sbaz /usr/bin/sbaz
sudo ln -s /usr/share/scala/bin/sbaz-setup /usr/bin/sbaz-setup
sudo ln -s /usr/share/scala/bin/scaladoc /usr/bin/scaladoc
sudo ln -s /usr/share/scala/bin/scalap /usr/bin/scalap
