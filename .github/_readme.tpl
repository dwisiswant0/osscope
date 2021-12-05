# Open-Source _(Software)_ Scope

A curated GitHub repository of [bounty-targets-data](https://github.com/arkadiyt/bounty-targets-data) that's in-scope and eligible for bounty.

## Objectives

To make it easier to do security research, pen-test (whitebox perspective), local setup CVE (by reverting to known-vulnerability commit), mass-scan, static analysis (Semgrep, CodeQL, .etc) and other things where the utilities are similar.

## Repositories

<details>
<summary>In-scopes</summary>

${IN_SCOPES}
</details>

You can download a collection of repositories in the [list.txt](https://github.com/dwisiswant0/osscope/blob/master/list.txt) file, thus you can do mass cloning with:

```console
$ cat list.txt | grep / | xargs -I % git clone https://github.com/%
```

> Using `grep` because there's scope that is wildcard (organizational, not per-repository).

---

:bulb: Please note that each program also has out of scope that we do NOT provide; review before reporting to the relevant program to avoid not applicable submissions (if you want to make a disclosures) nor do we relate the scope to the program platform so please check the `SECURITY.md` file for each repository/organization.