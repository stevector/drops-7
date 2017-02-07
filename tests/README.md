# ci-drops-8
CI tests for the [drops-8](https://github.com/pantheon-systems/drops-8) repository.

[![CircleCI](https://circleci.com/gh/pantheon-systems/ci-drops-8.svg?style=svg)](https://circleci.com/gh/pantheon-systems/ci-drops-8)

This repository holds the Behat tests used to verify new Drupal releases on the Pantheon platform.

## Environment Variables

The following environment variables must be set either in the Circle CI environment settings page, or the machine / environment section of the `circle.yml` file:

- **ADMIN_PASSWORD:** Used to set the password for the uid 1 user during site installation.
- **GIT_EMAIL:** Used to configure the email address for the git user for commits we make.
- **TERMINUS_SITE:** Defines the remote Pantheon site that will be used to run this test.
- **TERMINUS_ENV:** Defines the name of the Pantheon multidev environment that will be created to run this test. Set to `ci-${CIRCLE_BUILD_NUM}`
- **MULTIDEV_DELETE_PATTERN:** A regular expression that defines which multidev sites were created by this script. Should match up with the definition of `TERMINUS_ENV`. If defined, then the delete-old-multidevs script will use it to delete the oldest remaining environments prior to running tests.
- **TERMINUS_TOKEN:** A Terminus OAuth token that has write access to the terminus site specified by `TERMINUS_SITE`.
- **TESTING_DIR:** Points to a directory on Circle CI that will hold the local clone of our test repository. Set to `/tmp/ci-drops-8`.

## Circle Configuration

The [circle.yml.dist](circle.yml.dist) file shows the configuration used to test the drops-8 repository. To use these exact tests on one of your own Drupal 8 Pantheon sites, you could copy this file into your repository and customize it as needed. If you do this, you might also want to fork this repository so that you may add your own tests. It is also possible, if you prefer, to copy everything in this project into your Drupal site's repository. Doing this would require a few more minor changes to the circle.yml file, to remove the `git clone` operation, and to change the path to the scripts.
