@echo OFF
pm2 stop opdallergy & pm2 delete opdallergy & pm2 start mpcu/app.js --name opdallergy & pm2-startup install & pm2 save
exit 0


