#!/bin/sh
set -e
ocaml setup.ml -clean
ocaml setup.ml -configure --enable-camlp4 --enable-ppx --enable-react --prefix c:/ocamlmgw/
ocaml setup.ml -build
ocamlfind remove lwt
ocaml setup.ml -install
