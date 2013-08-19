class projects::plyfe_embed {

  notify { 'class projects::plyfe_embed declared': }

  boxen::project { 'plyfe_embed':
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/plyfe-embed",
    source        => 'plyfe/plyfe-embed',
  }

  host { "embed-development.plyfe.me":
    ip => "127.0.0.1",
  }

}
