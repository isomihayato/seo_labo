server '133.125.43.55',
    user: 'deployer',
    roles: %w{app db web},
    ssh_options: {
      port: 12089,
      user: 'deployer',
      keys: %w(~/.ssh/seo_labo/id_rsa),
      forward_agent: true
    }
#デプロイするサーバーにsshログインする鍵の情報。サーバー編で作成した鍵のパス
