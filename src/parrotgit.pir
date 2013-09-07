.sub '' :anon :load
  .local pmc lib, nci
  loadlib lib, 'libparrotgit.so'
  dlfunc nci, lib, 'open_repo', 'pp'
  set_global ['Git2';'Git'], 'open_repo', nci
  dlfunc nci, lib, 'init_repository', 'pp'
  set_global ['Git2';'Git'], 'init_repository', nci
  dlfunc nci, lib, 'init_repository2', 'ppi'
  set_global ['Git2';'Git'], 'init_repository2', nci
  dlfunc nci, lib, 'repo_index', 'pp'
  set_global ['Git2';'Git'], 'repo_index', nci
  dlfunc nci, lib, 'repo_head', 'pp'
  set_global ['Git2';'Git'], 'repo_head', nci
  dlfunc nci, lib, 'branchname', 'pp'
  set_global ['Git2';'Git'], 'branchname', nci
  dlfunc nci, lib, 'get_config', 'pp'
  set_global ['Git2';'Git'], 'get_config', nci
  dlfunc nci, lib, 'get_config_int32', 'ipp'
  set_global ['Git2';'Git'], 'get_config_int32', nci
  dlfunc nci, lib, 'commit_lookup', 'ppp'
  set_global ['Git2';'Git'], 'commit_lookup', nci
  dlfunc nci, lib, 'parent', 'ppi'
  set_global ['Git2';'Git'], 'parent', nci
  dlfunc nci, lib, 'new_revwalk', 'pp'
  set_global ['Git2';'Git'], 'new_revwalk', nci
  dlfunc nci, lib, 'blob_lookup', 'ppp'
  set_global ['Git2';'Git'], 'blob_lookup', nci
.end
