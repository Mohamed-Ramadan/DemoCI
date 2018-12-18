openssl aes-256-cbc -k "approcks123456789" -in dist.p12.enc -d -a -out dist.p12
openssl aes-256-cbc -k "" -in dist.cer.enc -d -a -out dist.cer
openssl aes-256-cbc -k "" -in dist.mobileprovision.enc -d -a -out dist.mobileprovision
