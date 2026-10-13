{
  flake-file.inputs = {
    den.url = "github:denful/den";
    with-inputs = {
      url = "github:denful/with-inputs";
      flake = false;
    };
  };
}
