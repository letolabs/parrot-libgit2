.sub '' :anon :load
  .local pmc lib, nci
  loadlib lib, 'libgit2.so'
  dlfunc nci, lib, 'git_blob_rawcontent', 'pp'
  set_global ['Git'], 'git_blob_rawcontent', nci
  dlfunc nci, lib, 'git_blob_create_fromfile', 'ip'
  set_global ['Git'], 'git_blob_create_fromfile', nci
  dlfunc nci, lib, 'git_blob_create_frombuffer', 'ip'
  set_global ['Git'], 'git_blob_create_frombuffer', nci
  dlfunc nci, lib, 'git_blob_rawsize', 'ip'
  set_global ['Git'], 'git_blob_rawsize', nci
  dlfunc nci, lib, 'git_commit_time', 'pp'
  set_global ['Git'], 'git_commit_time', nci
  dlfunc nci, lib, 'git_commit_id', 'pp'
  set_global ['Git'], 'git_commit_id', nci
  dlfunc nci, lib, 'git_commit_message_short', 'pp'
  set_global ['Git'], 'git_commit_message_short', nci
  dlfunc nci, lib, 'git_commit_message', 'pp'
  set_global ['Git'], 'git_commit_message', nci
  dlfunc nci, lib, 'git_commit_parent_oid', 'pp'
  set_global ['Git'], 'git_commit_parent_oid', nci
  dlfunc nci, lib, 'git_commit_parentcount', 'ip'
  set_global ['Git'], 'git_commit_parentcount', nci
  dlfunc nci, lib, 'git_commit_tree', 'ip'
  set_global ['Git'], 'git_commit_tree', nci
  dlfunc nci, lib, 'git_commit_parent', 'ip'
  set_global ['Git'], 'git_commit_parent', nci
  dlfunc nci, lib, 'git_commit_committer', 'pp'
  set_global ['Git'], 'git_commit_committer', nci
  dlfunc nci, lib, 'git_commit_time_offset', 'ip'
  set_global ['Git'], 'git_commit_time_offset', nci
  dlfunc nci, lib, 'git_commit_tree_oid', 'pp'
  set_global ['Git'], 'git_commit_tree_oid', nci
  dlfunc nci, lib, 'git_commit_author', 'pp'
  set_global ['Git'], 'git_commit_author', nci
  dlfunc nci, lib, 'git_strarray_free', 'vv'
  set_global ['Git'], 'git_strarray_free', nci
  dlfunc nci, lib, 'git_libgit2_version', 'vi'
  set_global ['Git'], 'git_libgit2_version', nci
  dlfunc nci, lib, 'git_config_get_bool', 'ip'
  set_global ['Git'], 'git_config_get_bool', nci
  dlfunc nci, lib, 'git_config_add_file_ondisk', 'ip'
  set_global ['Git'], 'git_config_add_file_ondisk', nci
  dlfunc nci, lib, 'git_config_get_int', 'ip'
  set_global ['Git'], 'git_config_get_int', nci
  dlfunc nci, lib, 'git_config_file__ondisk', 'iv'
  set_global ['Git'], 'git_config_file__ondisk', nci
  dlfunc nci, lib, 'git_config_set_string', 'ip'
  set_global ['Git'], 'git_config_set_string', nci
  dlfunc nci, lib, 'git_config_open_global', 'ip'
  set_global ['Git'], 'git_config_open_global', nci
  dlfunc nci, lib, 'git_config_add_file', 'ip'
  set_global ['Git'], 'git_config_add_file', nci
  dlfunc nci, lib, 'git_config_open_ondisk', 'ip'
  set_global ['Git'], 'git_config_open_ondisk', nci
  dlfunc nci, lib, 'git_config_find_global', 'ip'
  set_global ['Git'], 'git_config_find_global', nci
  dlfunc nci, lib, 'git_config_new', 'ip'
  set_global ['Git'], 'git_config_new', nci
  dlfunc nci, lib, 'git_config_free', 'vp'
  set_global ['Git'], 'git_config_free', nci
  dlfunc nci, lib, 'git_config_get_long', 'ip'
  set_global ['Git'], 'git_config_get_long', nci
  dlfunc nci, lib, 'git_config_get_string', 'ip'
  set_global ['Git'], 'git_config_get_string', nci
  dlfunc nci, lib, 'git_config_set_int', 'ip'
  set_global ['Git'], 'git_config_set_int', nci
  dlfunc nci, lib, 'git_config_set_long', 'ip'
  set_global ['Git'], 'git_config_set_long', nci
  dlfunc nci, lib, 'git_config_set_bool', 'ip'
  set_global ['Git'], 'git_config_set_bool', nci
  dlfunc nci, lib, 'git_config_foreach', 'ip'
  set_global ['Git'], 'git_config_foreach', nci
  dlfunc nci, lib, 'git_strerror', 'pi'
  set_global ['Git'], 'git_strerror', nci
  dlfunc nci, lib, 'git_lasterror', 'pv'
  set_global ['Git'], 'git_lasterror', nci
  dlfunc nci, lib, 'git_index_entry_stage', 'iv'
  set_global ['Git'], 'git_index_entry_stage', nci
  dlfunc nci, lib, 'git_index_add2', 'ip'
  set_global ['Git'], 'git_index_add2', nci
  dlfunc nci, lib, 'git_index_free', 'vp'
  set_global ['Git'], 'git_index_free', nci
  dlfunc nci, lib, 'git_index_get_unmerged_bypath', 'pp'
  set_global ['Git'], 'git_index_get_unmerged_bypath', nci
  dlfunc nci, lib, 'git_index_append2', 'ip'
  set_global ['Git'], 'git_index_append2', nci
  dlfunc nci, lib, 'git_index_read', 'ip'
  set_global ['Git'], 'git_index_read', nci
  dlfunc nci, lib, 'git_index_find', 'ip'
  set_global ['Git'], 'git_index_find', nci
  dlfunc nci, lib, 'git_index_get', 'pp'
  set_global ['Git'], 'git_index_get', nci
  dlfunc nci, lib, 'git_index_open', 'ip'
  set_global ['Git'], 'git_index_open', nci
  dlfunc nci, lib, 'git_index_write', 'ip'
  set_global ['Git'], 'git_index_write', nci
  dlfunc nci, lib, 'git_index_add', 'ip'
  set_global ['Git'], 'git_index_add', nci
  dlfunc nci, lib, 'git_index_entrycount_unmerged', 'ip'
  set_global ['Git'], 'git_index_entrycount_unmerged', nci
  dlfunc nci, lib, 'git_index_entrycount', 'ip'
  set_global ['Git'], 'git_index_entrycount', nci
  dlfunc nci, lib, 'git_index_append', 'ip'
  set_global ['Git'], 'git_index_append', nci
  dlfunc nci, lib, 'git_index_remove', 'ip'
  set_global ['Git'], 'git_index_remove', nci
  dlfunc nci, lib, 'git_index_get_unmerged_byindex', 'pp'
  set_global ['Git'], 'git_index_get_unmerged_byindex', nci
  dlfunc nci, lib, 'git_index_clear', 'vp'
  set_global ['Git'], 'git_index_clear', nci
  dlfunc nci, lib, 'git_object__size', 'ip'
  set_global ['Git'], 'git_object__size', nci
  dlfunc nci, lib, 'git_object_string2type', 'pv'
  set_global ['Git'], 'git_object_string2type', nci
  dlfunc nci, lib, 'git_object_type2string', 'pp'
  set_global ['Git'], 'git_object_type2string', nci
  dlfunc nci, lib, 'git_object_typeisloose', 'ip'
  set_global ['Git'], 'git_object_typeisloose', nci
  dlfunc nci, lib, 'git_object_owner', 'pv'
  set_global ['Git'], 'git_object_owner', nci
  dlfunc nci, lib, 'git_object_close', 'vp'
  set_global ['Git'], 'git_object_close', nci
  dlfunc nci, lib, 'git_object_type', 'pv'
  set_global ['Git'], 'git_object_type', nci
  dlfunc nci, lib, 'git_object_id', 'pv'
  set_global ['Git'], 'git_object_id', nci
  dlfunc nci, lib, 'git_odb_exists', 'ip'
  set_global ['Git'], 'git_odb_exists', nci
  dlfunc nci, lib, 'git_odb_object_data', 'pp'
  set_global ['Git'], 'git_odb_object_data', nci
  dlfunc nci, lib, 'git_odb_read_prefix', 'ip'
  set_global ['Git'], 'git_odb_read_prefix', nci
  dlfunc nci, lib, 'git_odb_read', 'ip'
  set_global ['Git'], 'git_odb_read', nci
  dlfunc nci, lib, 'git_odb_object_size', 'ip'
  set_global ['Git'], 'git_odb_object_size', nci
  dlfunc nci, lib, 'git_odb_add_alternate', 'ip'
  set_global ['Git'], 'git_odb_add_alternate', nci
  dlfunc nci, lib, 'git_odb_write', 'ip'
  set_global ['Git'], 'git_odb_write', nci
  dlfunc nci, lib, 'git_odb_object_close', 'vp'
  set_global ['Git'], 'git_odb_object_close', nci
  dlfunc nci, lib, 'git_odb_new', 'ip'
  set_global ['Git'], 'git_odb_new', nci
  dlfunc nci, lib, 'git_odb_close', 'vp'
  set_global ['Git'], 'git_odb_close', nci
  dlfunc nci, lib, 'git_odb_read_header', 'ii'
  set_global ['Git'], 'git_odb_read_header', nci
  dlfunc nci, lib, 'git_odb_hash', 'ip'
  set_global ['Git'], 'git_odb_hash', nci
  dlfunc nci, lib, 'git_odb_add_backend', 'ip'
  set_global ['Git'], 'git_odb_add_backend', nci
  dlfunc nci, lib, 'git_odb_open_wstream', 'ip'
  set_global ['Git'], 'git_odb_open_wstream', nci
  dlfunc nci, lib, 'git_odb_object_id', 'pp'
  set_global ['Git'], 'git_odb_object_id', nci
  dlfunc nci, lib, 'git_odb_open', 'ip'
  set_global ['Git'], 'git_odb_open', nci
  dlfunc nci, lib, 'git_odb_object_type', 'pp'
  set_global ['Git'], 'git_odb_object_type', nci
  dlfunc nci, lib, 'git_odb_open_rstream', 'ip'
  set_global ['Git'], 'git_odb_open_rstream', nci
  dlfunc nci, lib, 'git_odb_backend_pack', 'ipvv'
  set_global ['Git'], 'git_odb_backend_pack', nci
  dlfunc nci, lib, 'git_oid_ncmp', 'iv'
  set_global ['Git'], 'git_oid_ncmp', nci
  dlfunc nci, lib, 'git_oid_fromraw', 'vp'
  set_global ['Git'], 'git_oid_fromraw', nci
  dlfunc nci, lib, 'git_oid_fmt', 'vp'
  set_global ['Git'], 'git_oid_fmt', nci
  dlfunc nci, lib, 'git_oid_fromstr', 'ip'
  set_global ['Git'], 'git_oid_fromstr', nci
  dlfunc nci, lib, 'git_oid_cmp', 'iv'
  set_global ['Git'], 'git_oid_cmp', nci
  dlfunc nci, lib, 'git_oid_allocfmt', 'pv'
  set_global ['Git'], 'git_oid_allocfmt', nci
  dlfunc nci, lib, 'git_oid_to_string', 'pp'
  set_global ['Git'], 'git_oid_to_string', nci
  dlfunc nci, lib, 'git_oid_cpy', 'vp'
  set_global ['Git'], 'git_oid_cpy', nci
  dlfunc nci, lib, 'git_oid_pathfmt', 'vp'
  set_global ['Git'], 'git_oid_pathfmt', nci
  dlfunc nci, lib, 'git_reference_create_oid_f', 'ip'
  set_global ['Git'], 'git_reference_create_oid_f', nci
  dlfunc nci, lib, 'git_reference_rename_f', 'ip'
  set_global ['Git'], 'git_reference_rename_f', nci
  dlfunc nci, lib, 'git_reference_set_target', 'ip'
  set_global ['Git'], 'git_reference_set_target', nci
  dlfunc nci, lib, 'git_reference_type', 'vp'
  set_global ['Git'], 'git_reference_type', nci
  dlfunc nci, lib, 'git_reference_delete', 'ip'
  set_global ['Git'], 'git_reference_delete', nci
  dlfunc nci, lib, 'git_reference_set_oid', 'ip'
  set_global ['Git'], 'git_reference_set_oid', nci
  dlfunc nci, lib, 'git_reference_oid', 'pp'
  set_global ['Git'], 'git_reference_oid', nci
  dlfunc nci, lib, 'git_reference_create_symbolic_f', 'ip'
  set_global ['Git'], 'git_reference_create_symbolic_f', nci
  dlfunc nci, lib, 'git_reference_packall', 'ip'
  set_global ['Git'], 'git_reference_packall', nci
  dlfunc nci, lib, 'git_reference_target', 'pp'
  set_global ['Git'], 'git_reference_target', nci
  dlfunc nci, lib, 'git_reference_foreach', 'ip'
  set_global ['Git'], 'git_reference_foreach', nci
  dlfunc nci, lib, 'git_reference_lookup', 'ip'
  set_global ['Git'], 'git_reference_lookup', nci
  dlfunc nci, lib, 'git_reference_rename', 'ip'
  set_global ['Git'], 'git_reference_rename', nci
  dlfunc nci, lib, 'git_reference_resolve', 'ip'
  set_global ['Git'], 'git_reference_resolve', nci
  dlfunc nci, lib, 'git_reference_owner', 'pp'
  set_global ['Git'], 'git_reference_owner', nci
  dlfunc nci, lib, 'git_reference_create_symbolic', 'ip'
  set_global ['Git'], 'git_reference_create_symbolic', nci
  dlfunc nci, lib, 'git_reference_create_oid', 'ip'
  set_global ['Git'], 'git_reference_create_oid', nci
  dlfunc nci, lib, 'git_reference_name', 'pp'
  set_global ['Git'], 'git_reference_name', nci
  dlfunc nci, lib, 'git_reference_listall', 'iv'
  set_global ['Git'], 'git_reference_listall', nci
  dlfunc nci, lib, 'git_repository_is_empty', 'ip'
  set_global ['Git'], 'git_repository_is_empty', nci
  dlfunc nci, lib, 'git_repository_open3', 'ippppp'
  set_global ['Git'], 'git_repository_open3', nci
  dlfunc nci, lib, 'git_repository_open', 'ip'
  set_global ['Git'], 'git_repository_open', nci
  dlfunc nci, lib, 'git_repository_database', 'pp'
  set_global ['Git'], 'git_repository_database', nci
  dlfunc nci, lib, 'git_repository_open2', 'ippppp'
  set_global ['Git'], 'git_repository_open2', nci
  dlfunc nci, lib, 'git_repository_index', 'ip'
  set_global ['Git'], 'git_repository_index', nci
  dlfunc nci, lib, 'git_repository_discover', 'ip'
  set_global ['Git'], 'git_repository_discover', nci
  dlfunc nci, lib, 'git_repository_is_bare', 'ip'
  set_global ['Git'], 'git_repository_is_bare', nci
  dlfunc nci, lib, 'git_repository_init', 'ip'
  set_global ['Git'], 'git_repository_init', nci
  dlfunc nci, lib, 'git_repository_free', 'vp'
  set_global ['Git'], 'git_repository_free', nci
  dlfunc nci, lib, 'git_repository_config', 'ipppp'
  set_global ['Git'], 'git_repository_config', nci
  dlfunc nci, lib, 'git_repository_path', 'pp'
  set_global ['Git'], 'git_repository_path', nci
  dlfunc nci, lib, 'git_revwalk_new', 'ip'
  set_global ['Git'], 'git_revwalk_new', nci
  dlfunc nci, lib, 'git_revwalk_next', 'ip'
  set_global ['Git'], 'git_revwalk_next', nci
  dlfunc nci, lib, 'git_revwalk_free', 'vp'
  set_global ['Git'], 'git_revwalk_free', nci
  dlfunc nci, lib, 'git_revwalk_hide', 'ip'
  set_global ['Git'], 'git_revwalk_hide', nci
  dlfunc nci, lib, 'git_revwalk_repository', 'pp'
  set_global ['Git'], 'git_revwalk_repository', nci
  dlfunc nci, lib, 'git_revwalk_sorting', 'vp'
  set_global ['Git'], 'git_revwalk_sorting', nci
  dlfunc nci, lib, 'git_revwalk_push', 'ip'
  set_global ['Git'], 'git_revwalk_push', nci
  dlfunc nci, lib, 'git_revwalk_reset', 'vp'
  set_global ['Git'], 'git_revwalk_reset', nci
  dlfunc nci, lib, 'git_signature_now', 'pv'
  set_global ['Git'], 'git_signature_now', nci
  dlfunc nci, lib, 'git_signature_free', 'vp'
  set_global ['Git'], 'git_signature_free', nci
  dlfunc nci, lib, 'git_signature_dup', 'pv'
  set_global ['Git'], 'git_signature_dup', nci
  dlfunc nci, lib, 'git_signature_new', 'pv'
  set_global ['Git'], 'git_signature_new', nci
  dlfunc nci, lib, 'git_tag_name', 'pp'
  set_global ['Git'], 'git_tag_name', nci
  dlfunc nci, lib, 'git_tag_id', 'pp'
  set_global ['Git'], 'git_tag_id', nci
  dlfunc nci, lib, 'git_tag_tagger', 'pp'
  set_global ['Git'], 'git_tag_tagger', nci
  dlfunc nci, lib, 'git_tag_type', 'pp'
  set_global ['Git'], 'git_tag_type', nci
  dlfunc nci, lib, 'git_tag_target', 'ip'
  set_global ['Git'], 'git_tag_target', nci
  dlfunc nci, lib, 'git_tag_message', 'pp'
  set_global ['Git'], 'git_tag_message', nci
  dlfunc nci, lib, 'git_tag_target_oid', 'pp'
  set_global ['Git'], 'git_tag_target_oid', nci
  dlfunc nci, lib, 'git_treebuilder_insert', 'ip'
  set_global ['Git'], 'git_treebuilder_insert', nci
  dlfunc nci, lib, 'git_treebuilder_clear', 'vp'
  set_global ['Git'], 'git_treebuilder_clear', nci
  dlfunc nci, lib, 'git_tree_entry_type', 'pv'
  set_global ['Git'], 'git_tree_entry_type', nci
  dlfunc nci, lib, 'git_tree_entry_byname', 'pp'
  set_global ['Git'], 'git_tree_entry_byname', nci
  dlfunc nci, lib, 'git_tree_entry_id', 'pv'
  set_global ['Git'], 'git_tree_entry_id', nci
  dlfunc nci, lib, 'git_tree_entry_byindex', 'pp'
  set_global ['Git'], 'git_tree_entry_byindex', nci
  dlfunc nci, lib, 'git_treebuilder_free', 'vp'
  set_global ['Git'], 'git_treebuilder_free', nci
  dlfunc nci, lib, 'git_tree_entry_attributes', 'iv'
  set_global ['Git'], 'git_tree_entry_attributes', nci
  dlfunc nci, lib, 'git_tree_entrycount', 'ip'
  set_global ['Git'], 'git_tree_entrycount', nci
  dlfunc nci, lib, 'git_treebuilder_remove', 'ip'
  set_global ['Git'], 'git_treebuilder_remove', nci
  dlfunc nci, lib, 'git_treebuilder_get', 'pp'
  set_global ['Git'], 'git_treebuilder_get', nci
  dlfunc nci, lib, 'git_tree_create_fromindex', 'ip'
  set_global ['Git'], 'git_tree_create_fromindex', nci
  dlfunc nci, lib, 'git_tree_entry_2object', 'ip'
  set_global ['Git'], 'git_tree_entry_2object', nci
  dlfunc nci, lib, 'git_tree_entry_name', 'pv'
  set_global ['Git'], 'git_tree_entry_name', nci
  dlfunc nci, lib, 'git_treebuilder_filter', 'vp'
  set_global ['Git'], 'git_treebuilder_filter', nci
  dlfunc nci, lib, 'git_tree_id', 'pp'
  set_global ['Git'], 'git_tree_id', nci
  dlfunc nci, lib, 'git_treebuilder_write', 'ip'
  set_global ['Git'], 'git_treebuilder_write', nci
  dlfunc nci, lib, 'git_treebuilder_create', 'ip'
  set_global ['Git'], 'git_treebuilder_create', nci
.end
