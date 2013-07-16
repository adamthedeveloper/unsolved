First, install postgres

NOTE: All command line except where noted

brew install postgresql

NOTE: Follow instructions. Then,

createuser root -h localhost

NOTE: Answer Y

createuser deploy -h localhost

NOTE: Answer N

createdb unsolved_d -h localhost

createdb unsolved_t -h localhost

NOTE: Install latest ruby using rvm (install rvm if you don't have it):

rvm install ruby-2.0.0-p247

NOTE: Go ahead and fork this project into your own account

git clone git@github.com:< name on your account >/unsolved.git # NOTE: change to clone your fork

cd unsolved

echo "rvm use --create ruby-2.0.0-p247@unsolved" > .rvmrc

cd ..
cd unsolved

NOTE: Rvm should be recognized now

rake db:migrate

rails c

Admin.create email: 'myemail@example.com', password: 'mysecretpass'

quit

rails s

Open a browser and go to localhost:3000/master

Login using above credentials for Admin you just created

Boom.
