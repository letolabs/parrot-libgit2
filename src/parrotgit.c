#include <git2.h>
#include <stdio.h>
#include <string.h>

git_repository * open_repo(char * dir){
    git_repository *repo = NULL;
    int ret;
    ret = git_repository_open_ext(&repo, dir, 0, NULL);
    if (ret < 0){
	fprintf(stderr, "Error opening repository\n");
    }
    return repo;
}

git_repository * init_repository(char * dir){
    git_repository *repo;
    int ret;
    ret = git_repository_init(&repo, dir, 0);
    if (ret < 0){
	fprintf(stderr, "Error initializing repository\n");
    }
    return repo;
}

git_repository * init_repository2(char * dir, unsigned bare){
    git_repository *repo;
    int ret;
    ret = git_repository_init(&repo, dir, bare);
    if (ret < 0){
	fprintf(stderr, "Error initializing repository\n");
    }
    return repo;
}

git_index * repo_index(git_repository * repo){
    git_index *index;
    int ret;
    ret = git_repository_index(&index, repo);
    if (ret < 0)
	fprintf(stderr, "Error opening repository index\n");
    return index;
}

git_reference * repo_head(git_repository * repo){
    git_reference * head = NULL;
    int error = 0;

    error = git_repository_head(&head, repo);
    if (error){
	fprintf(stderr, "Orphaned Head or not found.\n");
    }
    return head;
}

git_config * get_config(char * config_path){
    git_config * config;
    int ret = 0;
    ret = git_config_open_ondisk(&config, config_path);
    if (ret < 0){
	fprintf(stderr, "Error getting config file\n");
    }
    return config;
}

git_commit * commit_lookup(git_repository * repo, git_oid * oid){
    int ret;
    git_commit * commit;
    ret = git_commit_lookup(&commit, repo, oid);
    if (ret < 0){
	fprintf(stderr, "Error looking up commit\n");
    }
    return commit;
}

git_commit * parent(git_commit * commit, int p){
    git_commit *parent;
    git_commit_parent(&parent, commit, p);
    return parent;
}

char * branchname(git_repository * repo){
    git_reference * head;
    head = repo_head(repo);
    char * branchname;
    branchname = git_reference_name(head);
    return branchname;
}

git_revwalk * new_revwalk(git_repository * repo){
    git_revwalk * new;
    git_revwalk_new(&new, repo);
    return new;
}

git_blob * blob_lookup(git_repository * repo, git_oid * oid){
    git_blob * blob;
    git_blob_lookup(&blob, repo, oid);
    return blob;
}

int get_config_int32(git_config * config, char * cfg_variable){
    int j;
    git_config_get_int32(&j, config, cfg_variable);
    return j;
}
