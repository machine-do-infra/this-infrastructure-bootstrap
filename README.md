Modules to:
1. Manage infrastructure inception repos (infrastructure-modules and infrastructure-live) so organization infrastructure can be brought online
1. Manage a GitHub Enterprise Organization (optional, bootstrap works on any organization you have repo-admin for)

## How to use
In your local Infrastructure directory, create a new directory for the organization you're bootstrapping.

```shell
mkdir machine-do-infra
cd machine-do-infra
```

Create `this-infrastructure-live` and `this-infrastructure-modules` directories:

```fish
# make these by hand or clone if they exist
set repos infrastructure-live infrastructure-modules

for repo in $repos; do
    mkdir $repo
    pushd $repo && \
      git init && \
      git remote add --track main origin git@github.com:machine-do-infra/infrastructure-live && \
      popd
done
```

```shell
cd infrastructure-live
mkdir bootstrap
cd bootstrap
```


```shell
mkdir organization organization-infrastructure-boostrap
echo <<
END
pushd ../infrastructure-modules

```