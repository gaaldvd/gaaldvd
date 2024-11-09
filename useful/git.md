# useful git commands

## switch remote URLs from HTTPS to SSH:

```
git remote -v
git remote set-url origin git@github.com:OWNER/REPOSITORY.git
```

## stop tracking a file/folder that has been added to the gitignore:

```
git rm --cached <file>
git rm -r --cached <folder>
```

## commit from the past:

```
THE_TIME='2019-03-30T8:20:00 +0200' GIT_AUTHOR_DATE=$THE_TIME GIT_COMMITTER_DATE=$THE_TIME git commit -m 'commit message here'
```

## update commits:

```
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='AUTHOR'; GIT_AUTHOR_EMAIL='EMAIL'; GIT_COMMITTER_NAME='COMMITER'; GIT_COMMITTER_EMAIL='EMAIL';" HEAD
```
