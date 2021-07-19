# Internet Checker

This script is used to check internet connectivity from your local machine at a certain interval (default 3 sec).

There is a [internet-checker.service](internet-checker.service) which should be kept in **/etc/systemd/system **directory and run commands below:

```shell
sudo cp internet-checker.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start internet-checker.service
```
