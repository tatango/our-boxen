class projects::plyfe_preview {

  notify { 'class projects::plyfe_preview declared': }

  boxen::project { 'plyfe_preview':
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/plyfe-preview",
    source        => 'plyfe/plyfe-preview',
  }

  package {
    [
      'postgresql'
    ]:
  }

  host { "preview-development.plyfe.me":
    ip => "127.0.0.1",
  }

}
