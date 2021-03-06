# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal }:

cabal.mkDerivation (self: {
  pname = "utf8-string";
  version = "0.3.8";
  sha256 = "1h29dn0scsfkhmkg14ywq9178lw40ah1r36w249zfzqr02y7qxc0";
  noHaddock = self.stdenv.lib.versionOlder self.ghc.version "6.11";
  patchPhase = ''
    sed -ir -e 's|Extensions: | Extensions: UndecidableInstances, |' utf8-string.cabal
  '';
  meta = {
    homepage = "http://github.com/glguy/utf8-string/";
    description = "Support for reading and writing UTF8 Strings";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
