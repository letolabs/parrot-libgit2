.sub '' :anon :load
  .local pmc lib, nci
  loadlib lib, 'libgit2.so'
  dlfunc nci, lib, 'git_attr_cache_flush', 'vp'
  set_global ['Git2';'Raw'], 'git_attr_cache_flush', nci
  dlfunc nci, lib, 'git_attr_add_macro', 'ippp'
  set_global ['Git2';'Raw'], 'git_attr_add_macro', nci
  dlfunc nci, lib, 'git_attr_value', 'pp'
  set_global ['Git2';'Raw'], 'git_attr_value', nci
  dlfunc nci, lib, 'git_attr_foreach', 'ipippp'
  set_global ['Git2';'Raw'], 'git_attr_foreach', nci
  dlfunc nci, lib, 'git_attr_get', 'ippipp'
  set_global ['Git2';'Raw'], 'git_attr_get', nci
  dlfunc nci, lib, 'git_attr_get_many', 'ippipip'
  set_global ['Git2';'Raw'], 'git_attr_get_many', nci
  dlfunc nci, lib, 'git_blob_rawsize', 'pp'
  set_global ['Git2';'Raw'], 'git_blob_rawsize', nci
  dlfunc nci, lib, 'git_blob_create_fromchunks', 'ippppp'
  set_global ['Git2';'Raw'], 'git_blob_create_fromchunks', nci
  dlfunc nci, lib, 'git_blob_rawcontent', 'pp'
  set_global ['Git2';'Raw'], 'git_blob_rawcontent', nci
  dlfunc nci, lib, 'git_blob_create_fromdisk', 'ippp'
  set_global ['Git2';'Raw'], 'git_blob_create_fromdisk', nci
  dlfunc nci, lib, 'git_blob_lookup_prefix', 'ipppi'
  set_global ['Git2';'Raw'], 'git_blob_lookup_prefix', nci
  dlfunc nci, lib, 'git_blob_create_fromworkdir', 'ippp'
  set_global ['Git2';'Raw'], 'git_blob_create_fromworkdir', nci
  dlfunc nci, lib, 'git_blob_free', 'vp'
  set_global ['Git2';'Raw'], 'git_blob_free', nci
  dlfunc nci, lib, 'git_blob_is_binary', 'ip'
  set_global ['Git2';'Raw'], 'git_blob_is_binary', nci
  dlfunc nci, lib, 'git_blob_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_blob_owner', nci
  dlfunc nci, lib, 'git_blob_id', 'pp'
  set_global ['Git2';'Raw'], 'git_blob_id', nci
  dlfunc nci, lib, 'git_blob_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_blob_lookup', nci
  dlfunc nci, lib, 'git_blob_create_frombuffer', 'ipppi'
  set_global ['Git2';'Raw'], 'git_blob_create_frombuffer', nci
  dlfunc nci, lib, 'git_branch_upstream', 'ipp'
  set_global ['Git2';'Raw'], 'git_branch_upstream', nci
  dlfunc nci, lib, 'git_branch_move', 'ipppi'
  set_global ['Git2';'Raw'], 'git_branch_move', nci
  dlfunc nci, lib, 'git_branch_is_head', 'ip'
  set_global ['Git2';'Raw'], 'git_branch_is_head', nci
  dlfunc nci, lib, 'git_branch_create', 'ippppi'
  set_global ['Git2';'Raw'], 'git_branch_create', nci
  dlfunc nci, lib, 'git_branch_name', 'ipp'
  set_global ['Git2';'Raw'], 'git_branch_name', nci
  dlfunc nci, lib, 'git_branch_set_upstream', 'ipp'
  set_global ['Git2';'Raw'], 'git_branch_set_upstream', nci
  dlfunc nci, lib, 'git_branch_delete', 'ip'
  set_global ['Git2';'Raw'], 'git_branch_delete', nci
  dlfunc nci, lib, 'git_branch_remote_name', 'ipipp'
  set_global ['Git2';'Raw'], 'git_branch_remote_name', nci
  dlfunc nci, lib, 'git_branch_lookup', 'ipppp'
  set_global ['Git2';'Raw'], 'git_branch_lookup', nci
  dlfunc nci, lib, 'git_branch_upstream_name', 'ipipp'
  set_global ['Git2';'Raw'], 'git_branch_upstream_name', nci
  dlfunc nci, lib, 'git_branch_foreach', 'ipipp'
  set_global ['Git2';'Raw'], 'git_branch_foreach', nci
  dlfunc nci, lib, 'git_checkout_index', 'ippp'
  set_global ['Git2';'Raw'], 'git_checkout_index', nci
  dlfunc nci, lib, 'git_checkout_head', 'ipp'
  set_global ['Git2';'Raw'], 'git_checkout_head', nci
  dlfunc nci, lib, 'git_checkout_tree', 'ippp'
  set_global ['Git2';'Raw'], 'git_checkout_tree', nci
  dlfunc nci, lib, 'git_clone', 'ipppp'
  set_global ['Git2';'Raw'], 'git_clone', nci
  dlfunc nci, lib, 'git_commit_tree', 'ipp'
  set_global ['Git2';'Raw'], 'git_commit_tree', nci
  dlfunc nci, lib, 'git_commit_create_v', 'ippppppppip'
  set_global ['Git2';'Raw'], 'git_commit_create_v', nci
  dlfunc nci, lib, 'git_commit_lookup_prefix', 'ipppi'
  set_global ['Git2';'Raw'], 'git_commit_lookup_prefix', nci
  dlfunc nci, lib, 'git_commit_message_encoding', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_message_encoding', nci
  dlfunc nci, lib, 'git_commit_committer', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_committer', nci
  dlfunc nci, lib, 'git_commit_free', 'vp'
  set_global ['Git2';'Raw'], 'git_commit_free', nci
  dlfunc nci, lib, 'git_commit_author', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_author', nci
  dlfunc nci, lib, 'git_commit_parent_id', 'ppi'
  set_global ['Git2';'Raw'], 'git_commit_parent_id', nci
  dlfunc nci, lib, 'git_commit_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_commit_lookup', nci
  dlfunc nci, lib, 'git_commit_parentcount', 'ip'
  set_global ['Git2';'Raw'], 'git_commit_parentcount', nci
  dlfunc nci, lib, 'git_commit_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_owner', nci
  dlfunc nci, lib, 'git_commit_create', 'ippppppppip'
  set_global ['Git2';'Raw'], 'git_commit_create', nci
  dlfunc nci, lib, 'git_commit_nth_gen_ancestor', 'ippi'
  set_global ['Git2';'Raw'], 'git_commit_nth_gen_ancestor', nci
  dlfunc nci, lib, 'git_commit_id', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_id', nci
  dlfunc nci, lib, 'git_commit_parent', 'ippi'
  set_global ['Git2';'Raw'], 'git_commit_parent', nci
  dlfunc nci, lib, 'git_commit_time_offset', 'ip'
  set_global ['Git2';'Raw'], 'git_commit_time_offset', nci
  dlfunc nci, lib, 'git_commit_tree_id', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_tree_id', nci
  dlfunc nci, lib, 'git_commit_message', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_message', nci
  dlfunc nci, lib, 'git_commit_time', 'pp'
  set_global ['Git2';'Raw'], 'git_commit_time', nci
  dlfunc nci, lib, 'git_libgit2_capabilities', 'iv'
  set_global ['Git2';'Raw'], 'git_libgit2_capabilities', nci
  dlfunc nci, lib, 'git_libgit2_opts', 'iip'
  set_global ['Git2';'Raw'], 'git_libgit2_opts', nci
  dlfunc nci, lib, 'git_libgit2_version', 'vppp'
  set_global ['Git2';'Raw'], 'git_libgit2_version', nci
  dlfunc nci, lib, 'git_config_find_xdg', 'ipi'
  set_global ['Git2';'Raw'], 'git_config_find_xdg', nci
  dlfunc nci, lib, 'git_config_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_foreach', nci
  dlfunc nci, lib, 'git_config_get_entry', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_get_entry', nci
  dlfunc nci, lib, 'git_config_open_level', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_open_level', nci
  dlfunc nci, lib, 'git_config_parse_int32', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_parse_int32', nci
  dlfunc nci, lib, 'git_config_open_ondisk', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_open_ondisk', nci
  dlfunc nci, lib, 'git_config_get_multivar', 'ippppp'
  set_global ['Git2';'Raw'], 'git_config_get_multivar', nci
  dlfunc nci, lib, 'git_config_set_multivar', 'ipppp'
  set_global ['Git2';'Raw'], 'git_config_set_multivar', nci
  dlfunc nci, lib, 'git_config_lookup_map_value', 'ippip'
  set_global ['Git2';'Raw'], 'git_config_lookup_map_value', nci
  dlfunc nci, lib, 'git_config_find_global', 'ipi'
  set_global ['Git2';'Raw'], 'git_config_find_global', nci
  dlfunc nci, lib, 'git_config_add_file_ondisk', 'ipppi'
  set_global ['Git2';'Raw'], 'git_config_add_file_ondisk', nci
  dlfunc nci, lib, 'git_config_refresh', 'ip'
  set_global ['Git2';'Raw'], 'git_config_refresh', nci
  dlfunc nci, lib, 'git_config_get_int32', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_get_int32', nci
  dlfunc nci, lib, 'git_config_find_system', 'ipi'
  set_global ['Git2';'Raw'], 'git_config_find_system', nci
  dlfunc nci, lib, 'git_config_parse_int64', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_parse_int64', nci
  dlfunc nci, lib, 'git_config_new', 'ip'
  set_global ['Git2';'Raw'], 'git_config_new', nci
  dlfunc nci, lib, 'git_config_get_mapped', 'ippppi'
  set_global ['Git2';'Raw'], 'git_config_get_mapped', nci
  dlfunc nci, lib, 'git_config_set_int64', 'ippi'
  set_global ['Git2';'Raw'], 'git_config_set_int64', nci
  dlfunc nci, lib, 'git_config_set_string', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_set_string', nci
  dlfunc nci, lib, 'git_config_get_int64', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_get_int64', nci
  dlfunc nci, lib, 'git_config_open_default', 'ip'
  set_global ['Git2';'Raw'], 'git_config_open_default', nci
  dlfunc nci, lib, 'git_config_get_string', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_get_string', nci
  dlfunc nci, lib, 'git_config_delete_entry', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_delete_entry', nci
  dlfunc nci, lib, 'git_config_free', 'vp'
  set_global ['Git2';'Raw'], 'git_config_free', nci
  dlfunc nci, lib, 'git_config_set_int32', 'ippi'
  set_global ['Git2';'Raw'], 'git_config_set_int32', nci
  dlfunc nci, lib, 'git_config_parse_bool', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_parse_bool', nci
  dlfunc nci, lib, 'git_config_foreach_match', 'ipppp'
  set_global ['Git2';'Raw'], 'git_config_foreach_match', nci
  dlfunc nci, lib, 'git_config_open_global', 'ipp'
  set_global ['Git2';'Raw'], 'git_config_open_global', nci
  dlfunc nci, lib, 'git_config_set_bool', 'ippi'
  set_global ['Git2';'Raw'], 'git_config_set_bool', nci
  dlfunc nci, lib, 'git_config_get_bool', 'ippp'
  set_global ['Git2';'Raw'], 'git_config_get_bool', nci
  dlfunc nci, lib, 'git_cred_userpass', 'ipppip'
  set_global ['Git2';'Raw'], 'git_cred_userpass', nci
  dlfunc nci, lib, 'git_diff_tree_to_index', 'ippppp'
  set_global ['Git2';'Raw'], 'git_diff_tree_to_index', nci
  dlfunc nci, lib, 'git_diff_tree_to_workdir', 'ipppp'
  set_global ['Git2';'Raw'], 'git_diff_tree_to_workdir', nci
  dlfunc nci, lib, 'git_diff_num_deltas', 'ip'
  set_global ['Git2';'Raw'], 'git_diff_num_deltas', nci
  dlfunc nci, lib, 'git_diff_index_to_workdir', 'ipppp'
  set_global ['Git2';'Raw'], 'git_diff_index_to_workdir', nci
  dlfunc nci, lib, 'git_diff_get_patch', 'ipppi'
  set_global ['Git2';'Raw'], 'git_diff_get_patch', nci
  dlfunc nci, lib, 'git_diff_tree_to_tree', 'ippppp'
  set_global ['Git2';'Raw'], 'git_diff_tree_to_tree', nci
  dlfunc nci, lib, 'git_diff_patch_get_hunk', 'ipppppi'
  set_global ['Git2';'Raw'], 'git_diff_patch_get_hunk', nci
  dlfunc nci, lib, 'git_diff_patch_num_lines_in_hunk', 'ipi'
  set_global ['Git2';'Raw'], 'git_diff_patch_num_lines_in_hunk', nci
  dlfunc nci, lib, 'git_diff_find_similar', 'ipp'
  set_global ['Git2';'Raw'], 'git_diff_find_similar', nci
  dlfunc nci, lib, 'git_diff_patch_free', 'vp'
  set_global ['Git2';'Raw'], 'git_diff_patch_free', nci
  dlfunc nci, lib, 'git_diff_patch_to_str', 'ipp'
  set_global ['Git2';'Raw'], 'git_diff_patch_to_str', nci
  dlfunc nci, lib, 'git_diff_print_patch', 'ippp'
  set_global ['Git2';'Raw'], 'git_diff_print_patch', nci
  dlfunc nci, lib, 'git_diff_merge', 'ipp'
  set_global ['Git2';'Raw'], 'git_diff_merge', nci
  dlfunc nci, lib, 'git_diff_num_deltas_of_type', 'ipp'
  set_global ['Git2';'Raw'], 'git_diff_num_deltas_of_type', nci
  dlfunc nci, lib, 'git_diff_blob_to_buffer', 'ipppipppppp'
  set_global ['Git2';'Raw'], 'git_diff_blob_to_buffer', nci
  dlfunc nci, lib, 'git_diff_print_raw', 'ippp'
  set_global ['Git2';'Raw'], 'git_diff_print_raw', nci
  dlfunc nci, lib, 'git_diff_patch_delta', 'pp'
  set_global ['Git2';'Raw'], 'git_diff_patch_delta', nci
  dlfunc nci, lib, 'git_diff_print_compact', 'ippp'
  set_global ['Git2';'Raw'], 'git_diff_print_compact', nci
  dlfunc nci, lib, 'git_diff_patch_get_line_in_hunk', 'ippppppii'
  set_global ['Git2';'Raw'], 'git_diff_patch_get_line_in_hunk', nci
  dlfunc nci, lib, 'git_diff_foreach', 'ippppp'
  set_global ['Git2';'Raw'], 'git_diff_foreach', nci
  dlfunc nci, lib, 'git_diff_patch_print', 'ippp'
  set_global ['Git2';'Raw'], 'git_diff_patch_print', nci
  dlfunc nci, lib, 'git_diff_patch_from_blob_and_buffer', 'ippppipp'
  set_global ['Git2';'Raw'], 'git_diff_patch_from_blob_and_buffer', nci
  dlfunc nci, lib, 'git_diff_patch_from_blobs', 'ipppppp'
  set_global ['Git2';'Raw'], 'git_diff_patch_from_blobs', nci
  dlfunc nci, lib, 'git_diff_status_char', 'cp'
  set_global ['Git2';'Raw'], 'git_diff_status_char', nci
  dlfunc nci, lib, 'git_diff_list_free', 'vp'
  set_global ['Git2';'Raw'], 'git_diff_list_free', nci
  dlfunc nci, lib, 'git_diff_patch_line_stats', 'ipppp'
  set_global ['Git2';'Raw'], 'git_diff_patch_line_stats', nci
  dlfunc nci, lib, 'git_diff_patch_num_hunks', 'ip'
  set_global ['Git2';'Raw'], 'git_diff_patch_num_hunks', nci
  dlfunc nci, lib, 'git_diff_blobs', 'ippppppppp'
  set_global ['Git2';'Raw'], 'git_diff_blobs', nci
  dlfunc nci, lib, 'giterr_clear', 'vv'
  set_global ['Git2';'Raw'], 'giterr_clear', nci
  dlfunc nci, lib, 'giterr_last', 'pv'
  set_global ['Git2';'Raw'], 'giterr_last', nci
  dlfunc nci, lib, 'giterr_set_str', 'vip'
  set_global ['Git2';'Raw'], 'giterr_set_str', nci
  dlfunc nci, lib, 'giterr_set_oom', 'vv'
  set_global ['Git2';'Raw'], 'giterr_set_oom', nci
  dlfunc nci, lib, 'git_graph_ahead_behind', 'ippppp'
  set_global ['Git2';'Raw'], 'git_graph_ahead_behind', nci
  dlfunc nci, lib, 'git_ignore_add_rule', 'ipp'
  set_global ['Git2';'Raw'], 'git_ignore_add_rule', nci
  dlfunc nci, lib, 'git_ignore_path_is_ignored', 'ippp'
  set_global ['Git2';'Raw'], 'git_ignore_path_is_ignored', nci
  dlfunc nci, lib, 'git_ignore_clear_internal_rules', 'ip'
  set_global ['Git2';'Raw'], 'git_ignore_clear_internal_rules', nci
  dlfunc nci, lib, 'git_indexer_stream_new', 'ipppp'
  set_global ['Git2';'Raw'], 'git_indexer_stream_new', nci
  dlfunc nci, lib, 'git_indexer_stream_hash', 'pp'
  set_global ['Git2';'Raw'], 'git_indexer_stream_hash', nci
  dlfunc nci, lib, 'git_indexer_stream_add', 'ippip'
  set_global ['Git2';'Raw'], 'git_indexer_stream_add', nci
  dlfunc nci, lib, 'git_indexer_stream_finalize', 'ipp'
  set_global ['Git2';'Raw'], 'git_indexer_stream_finalize', nci
  dlfunc nci, lib, 'git_indexer_stream_free', 'vp'
  set_global ['Git2';'Raw'], 'git_indexer_stream_free', nci
  dlfunc nci, lib, 'git_index_remove', 'ippi'
  set_global ['Git2';'Raw'], 'git_index_remove', nci
  dlfunc nci, lib, 'git_index_conflict_iterator_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_conflict_iterator_new', nci
  dlfunc nci, lib, 'git_index_conflict_get', 'ippppp'
  set_global ['Git2';'Raw'], 'git_index_conflict_get', nci
  dlfunc nci, lib, 'git_index_open', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_open', nci
  dlfunc nci, lib, 'git_index_conflict_add', 'ipppp'
  set_global ['Git2';'Raw'], 'git_index_conflict_add', nci
  dlfunc nci, lib, 'git_index_find', 'ippp'
  set_global ['Git2';'Raw'], 'git_index_find', nci
  dlfunc nci, lib, 'git_index_remove_bypath', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_remove_bypath', nci
  dlfunc nci, lib, 'git_index_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_index_owner', nci
  dlfunc nci, lib, 'git_index_write', 'ip'
  set_global ['Git2';'Raw'], 'git_index_write', nci
  dlfunc nci, lib, 'git_index_conflict_remove', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_conflict_remove', nci
  dlfunc nci, lib, 'git_index_write_tree_to', 'ippp'
  set_global ['Git2';'Raw'], 'git_index_write_tree_to', nci
  dlfunc nci, lib, 'git_index_add_bypath', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_add_bypath', nci
  dlfunc nci, lib, 'git_index_free', 'vp'
  set_global ['Git2';'Raw'], 'git_index_free', nci
  dlfunc nci, lib, 'git_index_new', 'ip'
  set_global ['Git2';'Raw'], 'git_index_new', nci
  dlfunc nci, lib, 'git_index_set_caps', 'ipi'
  set_global ['Git2';'Raw'], 'git_index_set_caps', nci
  dlfunc nci, lib, 'git_index_write_tree', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_write_tree', nci
  dlfunc nci, lib, 'git_index_get_byindex', 'ppi'
  set_global ['Git2';'Raw'], 'git_index_get_byindex', nci
  dlfunc nci, lib, 'git_index_has_conflicts', 'ip'
  set_global ['Git2';'Raw'], 'git_index_has_conflicts', nci
  dlfunc nci, lib, 'git_index_update_all', 'ipppp'
  set_global ['Git2';'Raw'], 'git_index_update_all', nci
  dlfunc nci, lib, 'git_index_entrycount', 'ip'
  set_global ['Git2';'Raw'], 'git_index_entrycount', nci
  dlfunc nci, lib, 'git_index_remove_directory', 'ippi'
  set_global ['Git2';'Raw'], 'git_index_remove_directory', nci
  dlfunc nci, lib, 'git_index_read', 'ip'
  set_global ['Git2';'Raw'], 'git_index_read', nci
  dlfunc nci, lib, 'git_index_conflict_next', 'ipppp'
  set_global ['Git2';'Raw'], 'git_index_conflict_next', nci
  dlfunc nci, lib, 'git_index_add', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_add', nci
  dlfunc nci, lib, 'git_index_get_bypath', 'pppi'
  set_global ['Git2';'Raw'], 'git_index_get_bypath', nci
  dlfunc nci, lib, 'git_index_caps', 'ip'
  set_global ['Git2';'Raw'], 'git_index_caps', nci
  dlfunc nci, lib, 'git_index_clear', 'vp'
  set_global ['Git2';'Raw'], 'git_index_clear', nci
  dlfunc nci, lib, 'git_index_entry_stage', 'ip'
  set_global ['Git2';'Raw'], 'git_index_entry_stage', nci
  dlfunc nci, lib, 'git_index_add_all', 'ippipp'
  set_global ['Git2';'Raw'], 'git_index_add_all', nci
  dlfunc nci, lib, 'git_index_conflict_cleanup', 'vp'
  set_global ['Git2';'Raw'], 'git_index_conflict_cleanup', nci
  dlfunc nci, lib, 'git_index_remove_all', 'ipppp'
  set_global ['Git2';'Raw'], 'git_index_remove_all', nci
  dlfunc nci, lib, 'git_index_conflict_iterator_free', 'vp'
  set_global ['Git2';'Raw'], 'git_index_conflict_iterator_free', nci
  dlfunc nci, lib, 'git_index_read_tree', 'ipp'
  set_global ['Git2';'Raw'], 'git_index_read_tree', nci
  dlfunc nci, lib, 'git_merge_head_from_ref', 'ippp'
  set_global ['Git2';'Raw'], 'git_merge_head_from_ref', nci
  dlfunc nci, lib, 'git_merge_head_free', 'vp'
  set_global ['Git2';'Raw'], 'git_merge_head_free', nci
  dlfunc nci, lib, 'git_merge_head_from_oid', 'ippp'
  set_global ['Git2';'Raw'], 'git_merge_head_from_oid', nci
  dlfunc nci, lib, 'git_merge_head_from_fetchhead', 'ippppp'
  set_global ['Git2';'Raw'], 'git_merge_head_from_fetchhead', nci
  dlfunc nci, lib, 'git_merge_base', 'ipppp'
  set_global ['Git2';'Raw'], 'git_merge_base', nci
  dlfunc nci, lib, 'git_merge_trees', 'ipppppp'
  set_global ['Git2';'Raw'], 'git_merge_trees', nci
  dlfunc nci, lib, 'git_merge_base_many', 'ipppi'
  set_global ['Git2';'Raw'], 'git_merge_base_many', nci
  dlfunc nci, lib, 'git_message_prettify', 'ipipi'
  set_global ['Git2';'Raw'], 'git_message_prettify', nci
  dlfunc nci, lib, 'git_note_foreach', 'ipppp'
  set_global ['Git2';'Raw'], 'git_note_foreach', nci
  dlfunc nci, lib, 'git_note_create', 'ipppppppi'
  set_global ['Git2';'Raw'], 'git_note_create', nci
  dlfunc nci, lib, 'git_note_read', 'ipppp'
  set_global ['Git2';'Raw'], 'git_note_read', nci
  dlfunc nci, lib, 'git_note_free', 'vp'
  set_global ['Git2';'Raw'], 'git_note_free', nci
  dlfunc nci, lib, 'git_note_message', 'pp'
  set_global ['Git2';'Raw'], 'git_note_message', nci
  dlfunc nci, lib, 'git_note_remove', 'ippppp'
  set_global ['Git2';'Raw'], 'git_note_remove', nci
  dlfunc nci, lib, 'git_note_iterator_new', 'ippp'
  set_global ['Git2';'Raw'], 'git_note_iterator_new', nci
  dlfunc nci, lib, 'git_note_next', 'ippp'
  set_global ['Git2';'Raw'], 'git_note_next', nci
  dlfunc nci, lib, 'git_note_oid', 'pp'
  set_global ['Git2';'Raw'], 'git_note_oid', nci
  dlfunc nci, lib, 'git_note_iterator_free', 'vp'
  set_global ['Git2';'Raw'], 'git_note_iterator_free', nci
  dlfunc nci, lib, 'git_note_default_ref', 'ipp'
  set_global ['Git2';'Raw'], 'git_note_default_ref', nci
  dlfunc nci, lib, 'git_object_lookup_prefix', 'ipppip'
  set_global ['Git2';'Raw'], 'git_object_lookup_prefix', nci
  dlfunc nci, lib, 'git_object_type', 'pp'
  set_global ['Git2';'Raw'], 'git_object_type', nci
  dlfunc nci, lib, 'git_object_type2string', 'pp'
  set_global ['Git2';'Raw'], 'git_object_type2string', nci
  dlfunc nci, lib, 'git_object_dup', 'ipp'
  set_global ['Git2';'Raw'], 'git_object_dup', nci
  dlfunc nci, lib, 'git_object_lookup', 'ipppp'
  set_global ['Git2';'Raw'], 'git_object_lookup', nci
  dlfunc nci, lib, 'git_object_id', 'pp'
  set_global ['Git2';'Raw'], 'git_object_id', nci
  dlfunc nci, lib, 'git_object_free', 'vp'
  set_global ['Git2';'Raw'], 'git_object_free', nci
  dlfunc nci, lib, 'git_object_peel', 'ippp'
  set_global ['Git2';'Raw'], 'git_object_peel', nci
  dlfunc nci, lib, 'git_object__size', 'ip'
  set_global ['Git2';'Raw'], 'git_object__size', nci
  dlfunc nci, lib, 'git_object_typeisloose', 'ip'
  set_global ['Git2';'Raw'], 'git_object_typeisloose', nci
  dlfunc nci, lib, 'git_object_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_object_owner', nci
  dlfunc nci, lib, 'git_object_string2type', 'pp'
  set_global ['Git2';'Raw'], 'git_object_string2type', nci
  dlfunc nci, lib, 'git_odb_backend_pack', 'ipp'
  set_global ['Git2';'Raw'], 'git_odb_backend_pack', nci
  dlfunc nci, lib, 'git_odb_backend_loose', 'ippii'
  set_global ['Git2';'Raw'], 'git_odb_backend_loose', nci
  dlfunc nci, lib, 'git_odb_backend_one_pack', 'ipp'
  set_global ['Git2';'Raw'], 'git_odb_backend_one_pack', nci
  dlfunc nci, lib, 'git_odb_object_id', 'pp'
  set_global ['Git2';'Raw'], 'git_odb_object_id', nci
  dlfunc nci, lib, 'git_odb_open', 'ipp'
  set_global ['Git2';'Raw'], 'git_odb_open', nci
  dlfunc nci, lib, 'git_odb_read_prefix', 'ipppi'
  set_global ['Git2';'Raw'], 'git_odb_read_prefix', nci
  dlfunc nci, lib, 'git_odb_hashfile', 'ippp'
  set_global ['Git2';'Raw'], 'git_odb_hashfile', nci
  dlfunc nci, lib, 'git_odb_add_backend', 'ippi'
  set_global ['Git2';'Raw'], 'git_odb_add_backend', nci
  dlfunc nci, lib, 'git_odb_object_type', 'pp'
  set_global ['Git2';'Raw'], 'git_odb_object_type', nci
  dlfunc nci, lib, 'git_odb_open_rstream', 'ippp'
  set_global ['Git2';'Raw'], 'git_odb_open_rstream', nci
  dlfunc nci, lib, 'git_odb_exists', 'ipp'
  set_global ['Git2';'Raw'], 'git_odb_exists', nci
  dlfunc nci, lib, 'git_odb_add_disk_alternate', 'ipp'
  set_global ['Git2';'Raw'], 'git_odb_add_disk_alternate', nci
  dlfunc nci, lib, 'git_odb_free', 'vp'
  set_global ['Git2';'Raw'], 'git_odb_free', nci
  dlfunc nci, lib, 'git_odb_read', 'ippp'
  set_global ['Git2';'Raw'], 'git_odb_read', nci
  dlfunc nci, lib, 'git_odb_write', 'ipppip'
  set_global ['Git2';'Raw'], 'git_odb_write', nci
  dlfunc nci, lib, 'git_odb_object_free', 'vp'
  set_global ['Git2';'Raw'], 'git_odb_object_free', nci
  dlfunc nci, lib, 'git_odb_write_pack', 'ipppp'
  set_global ['Git2';'Raw'], 'git_odb_write_pack', nci
  dlfunc nci, lib, 'git_odb_hash', 'ippip'
  set_global ['Git2';'Raw'], 'git_odb_hash', nci
  dlfunc nci, lib, 'git_odb_refresh', 'ip'
  set_global ['Git2';'Raw'], 'git_odb_refresh', nci
  dlfunc nci, lib, 'git_odb_num_backends', 'ip'
  set_global ['Git2';'Raw'], 'git_odb_num_backends', nci
  dlfunc nci, lib, 'git_odb_open_wstream', 'ippip'
  set_global ['Git2';'Raw'], 'git_odb_open_wstream', nci
  dlfunc nci, lib, 'git_odb_get_backend', 'ippi'
  set_global ['Git2';'Raw'], 'git_odb_get_backend', nci
  dlfunc nci, lib, 'git_odb_object_data', 'pp'
  set_global ['Git2';'Raw'], 'git_odb_object_data', nci
  dlfunc nci, lib, 'git_odb_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_odb_foreach', nci
  dlfunc nci, lib, 'git_odb_read_header', 'ipppp'
  set_global ['Git2';'Raw'], 'git_odb_read_header', nci
  dlfunc nci, lib, 'git_odb_add_alternate', 'ippi'
  set_global ['Git2';'Raw'], 'git_odb_add_alternate', nci
  dlfunc nci, lib, 'git_odb_new', 'ip'
  set_global ['Git2';'Raw'], 'git_odb_new', nci
  dlfunc nci, lib, 'git_odb_object_size', 'ip'
  set_global ['Git2';'Raw'], 'git_odb_object_size', nci
  dlfunc nci, lib, 'git_oid_nfmt', 'vpip'
  set_global ['Git2';'Raw'], 'git_oid_nfmt', nci
  dlfunc nci, lib, 'git_oid_shorten_add', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_shorten_add', nci
  dlfunc nci, lib, 'git_oid_ncmp', 'ippi'
  set_global ['Git2';'Raw'], 'git_oid_ncmp', nci
  dlfunc nci, lib, 'git_oid_tostr', 'ppip'
  set_global ['Git2';'Raw'], 'git_oid_tostr', nci
  dlfunc nci, lib, 'git_oid_shorten_free', 'vp'
  set_global ['Git2';'Raw'], 'git_oid_shorten_free', nci
  dlfunc nci, lib, 'git_oid_fromstrp', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_fromstrp', nci
  dlfunc nci, lib, 'git_oid_cpy', 'vpp'
  set_global ['Git2';'Raw'], 'git_oid_cpy', nci
  dlfunc nci, lib, 'git_oid_fromraw', 'vpp'
  set_global ['Git2';'Raw'], 'git_oid_fromraw', nci
  dlfunc nci, lib, 'git_oid_streq', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_streq', nci
  dlfunc nci, lib, 'git_oid_allocfmt', 'pp'
  set_global ['Git2';'Raw'], 'git_oid_allocfmt', nci
  dlfunc nci, lib, 'git_oid_pathfmt', 'vpp'
  set_global ['Git2';'Raw'], 'git_oid_pathfmt', nci
  dlfunc nci, lib, 'git_oid_fromstrn', 'ippi'
  set_global ['Git2';'Raw'], 'git_oid_fromstrn', nci
  dlfunc nci, lib, 'git_oid_fmt', 'vpp'
  set_global ['Git2';'Raw'], 'git_oid_fmt', nci
  dlfunc nci, lib, 'git_oid_cmp', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_cmp', nci
  dlfunc nci, lib, 'git_oid_shorten_new', 'pi'
  set_global ['Git2';'Raw'], 'git_oid_shorten_new', nci
  dlfunc nci, lib, 'git_oid_iszero', 'ip'
  set_global ['Git2';'Raw'], 'git_oid_iszero', nci
  dlfunc nci, lib, 'git_oid_fromstr', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_fromstr', nci
  dlfunc nci, lib, 'git_oid_strcmp', 'ipp'
  set_global ['Git2';'Raw'], 'git_oid_strcmp', nci
  dlfunc nci, lib, 'git_packbuilder_insert_tree', 'ipp'
  set_global ['Git2';'Raw'], 'git_packbuilder_insert_tree', nci
  dlfunc nci, lib, 'git_packbuilder_insert', 'ippp'
  set_global ['Git2';'Raw'], 'git_packbuilder_insert', nci
  dlfunc nci, lib, 'git_packbuilder_set_threads', 'ipi'
  set_global ['Git2';'Raw'], 'git_packbuilder_set_threads', nci
  dlfunc nci, lib, 'git_packbuilder_write', 'ipppp'
  set_global ['Git2';'Raw'], 'git_packbuilder_write', nci
  dlfunc nci, lib, 'git_packbuilder_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_packbuilder_new', nci
  dlfunc nci, lib, 'git_packbuilder_insert_commit', 'ipp'
  set_global ['Git2';'Raw'], 'git_packbuilder_insert_commit', nci
  dlfunc nci, lib, 'git_packbuilder_free', 'vp'
  set_global ['Git2';'Raw'], 'git_packbuilder_free', nci
  dlfunc nci, lib, 'git_packbuilder_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_packbuilder_foreach', nci
  dlfunc nci, lib, 'git_packbuilder_object_count', 'ip'
  set_global ['Git2';'Raw'], 'git_packbuilder_object_count', nci
  dlfunc nci, lib, 'git_packbuilder_written', 'ip'
  set_global ['Git2';'Raw'], 'git_packbuilder_written', nci
  dlfunc nci, lib, 'git_push_status_foreach', 'ipippp'
  set_global ['Git2';'Raw'], 'git_push_status_foreach', nci
  dlfunc nci, lib, 'git_push_unpack_ok', 'ip'
  set_global ['Git2';'Raw'], 'git_push_unpack_ok', nci
  dlfunc nci, lib, 'git_push_free', 'vp'
  set_global ['Git2';'Raw'], 'git_push_free', nci
  dlfunc nci, lib, 'git_push_add_refspec', 'ipp'
  set_global ['Git2';'Raw'], 'git_push_add_refspec', nci
  dlfunc nci, lib, 'git_push_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_push_new', nci
  dlfunc nci, lib, 'git_push_set_options', 'ipp'
  set_global ['Git2';'Raw'], 'git_push_set_options', nci
  dlfunc nci, lib, 'git_push_finish', 'ip'
  set_global ['Git2';'Raw'], 'git_push_finish', nci
  dlfunc nci, lib, 'git_push_update_tips', 'ip'
  set_global ['Git2';'Raw'], 'git_push_update_tips', nci
  dlfunc nci, lib, 'git_refdb_free', 'vp'
  set_global ['Git2';'Raw'], 'git_refdb_free', nci
  dlfunc nci, lib, 'git_refdb_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_refdb_new', nci
  dlfunc nci, lib, 'git_refdb_open', 'ipp'
  set_global ['Git2';'Raw'], 'git_refdb_open', nci
  dlfunc nci, lib, 'git_refdb_compress', 'ip'
  set_global ['Git2';'Raw'], 'git_refdb_compress', nci
  dlfunc nci, lib, 'git_reflog_entry_committer', 'pp'
  set_global ['Git2';'Raw'], 'git_reflog_entry_committer', nci
  dlfunc nci, lib, 'git_reflog_drop', 'ipii'
  set_global ['Git2';'Raw'], 'git_reflog_drop', nci
  dlfunc nci, lib, 'git_reflog_entry_id_old', 'pp'
  set_global ['Git2';'Raw'], 'git_reflog_entry_id_old', nci
  dlfunc nci, lib, 'git_reflog_entry_id_new', 'pp'
  set_global ['Git2';'Raw'], 'git_reflog_entry_id_new', nci
  dlfunc nci, lib, 'git_reflog_entry_message', 'pp'
  set_global ['Git2';'Raw'], 'git_reflog_entry_message', nci
  dlfunc nci, lib, 'git_reflog_write', 'ip'
  set_global ['Git2';'Raw'], 'git_reflog_write', nci
  dlfunc nci, lib, 'git_reflog_entrycount', 'ip'
  set_global ['Git2';'Raw'], 'git_reflog_entrycount', nci
  dlfunc nci, lib, 'git_reflog_free', 'vp'
  set_global ['Git2';'Raw'], 'git_reflog_free', nci
  dlfunc nci, lib, 'git_reflog_read', 'ipp'
  set_global ['Git2';'Raw'], 'git_reflog_read', nci
  dlfunc nci, lib, 'git_reflog_delete', 'ip'
  set_global ['Git2';'Raw'], 'git_reflog_delete', nci
  dlfunc nci, lib, 'git_reflog_append', 'ipppp'
  set_global ['Git2';'Raw'], 'git_reflog_append', nci
  dlfunc nci, lib, 'git_reflog_rename', 'ipp'
  set_global ['Git2';'Raw'], 'git_reflog_rename', nci
  dlfunc nci, lib, 'git_reflog_entry_byindex', 'ppi'
  set_global ['Git2';'Raw'], 'git_reflog_entry_byindex', nci
  dlfunc nci, lib, 'git_reference_name_to_id', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_name_to_id', nci
  dlfunc nci, lib, 'git_reference_next_name', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_next_name', nci
  dlfunc nci, lib, 'git_reference_resolve', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_resolve', nci
  dlfunc nci, lib, 'git_reference_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_lookup', nci
  dlfunc nci, lib, 'git_reference_target', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_target', nci
  dlfunc nci, lib, 'git_reference_type', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_type', nci
  dlfunc nci, lib, 'git_reference_iterator_free', 'vp'
  set_global ['Git2';'Raw'], 'git_reference_iterator_free', nci
  dlfunc nci, lib, 'git_reference_rename', 'ipppi'
  set_global ['Git2';'Raw'], 'git_reference_rename', nci
  dlfunc nci, lib, 'git_reference_has_log', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_has_log', nci
  dlfunc nci, lib, 'git_reference_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_foreach', nci
  dlfunc nci, lib, 'git_reference_iterator_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_iterator_new', nci
  dlfunc nci, lib, 'git_reference_peel', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_peel', nci
  dlfunc nci, lib, 'git_reference_foreach_glob', 'ipppp'
  set_global ['Git2';'Raw'], 'git_reference_foreach_glob', nci
  dlfunc nci, lib, 'git_reference_is_valid_name', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_is_valid_name', nci
  dlfunc nci, lib, 'git_reference_dwim', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_dwim', nci
  dlfunc nci, lib, 'git_reference_is_remote', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_is_remote', nci
  dlfunc nci, lib, 'git_reference_set_target', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_set_target', nci
  dlfunc nci, lib, 'git_reference_create', 'ippppi'
  set_global ['Git2';'Raw'], 'git_reference_create', nci
  dlfunc nci, lib, 'git_reference_symbolic_create', 'ippppi'
  set_global ['Git2';'Raw'], 'git_reference_symbolic_create', nci
  dlfunc nci, lib, 'git_reference_normalize_name', 'ipipi'
  set_global ['Git2';'Raw'], 'git_reference_normalize_name', nci
  dlfunc nci, lib, 'git_reference_cmp', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_cmp', nci
  dlfunc nci, lib, 'git_reference_name', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_name', nci
  dlfunc nci, lib, 'git_reference_symbolic_set_target', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_symbolic_set_target', nci
  dlfunc nci, lib, 'git_reference_is_branch', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_is_branch', nci
  dlfunc nci, lib, 'git_reference_iterator_glob_new', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_iterator_glob_new', nci
  dlfunc nci, lib, 'git_reference_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_owner', nci
  dlfunc nci, lib, 'git_reference_target_peel', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_target_peel', nci
  dlfunc nci, lib, 'git_reference_free', 'vp'
  set_global ['Git2';'Raw'], 'git_reference_free', nci
  dlfunc nci, lib, 'git_reference_foreach_name', 'ippp'
  set_global ['Git2';'Raw'], 'git_reference_foreach_name', nci
  dlfunc nci, lib, 'git_reference_next', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_next', nci
  dlfunc nci, lib, 'git_reference_symbolic_target', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_symbolic_target', nci
  dlfunc nci, lib, 'git_reference_delete', 'ip'
  set_global ['Git2';'Raw'], 'git_reference_delete', nci
  dlfunc nci, lib, 'git_reference_shorthand', 'pp'
  set_global ['Git2';'Raw'], 'git_reference_shorthand', nci
  dlfunc nci, lib, 'git_reference_list', 'ipp'
  set_global ['Git2';'Raw'], 'git_reference_list', nci
  dlfunc nci, lib, 'git_refspec_transform', 'ipipp'
  set_global ['Git2';'Raw'], 'git_refspec_transform', nci
  dlfunc nci, lib, 'git_refspec_direction', 'pp'
  set_global ['Git2';'Raw'], 'git_refspec_direction', nci
  dlfunc nci, lib, 'git_refspec_rtransform', 'ipipp'
  set_global ['Git2';'Raw'], 'git_refspec_rtransform', nci
  dlfunc nci, lib, 'git_refspec_dst', 'pp'
  set_global ['Git2';'Raw'], 'git_refspec_dst', nci
  dlfunc nci, lib, 'git_refspec_src_matches', 'ipp'
  set_global ['Git2';'Raw'], 'git_refspec_src_matches', nci
  dlfunc nci, lib, 'git_refspec_force', 'ip'
  set_global ['Git2';'Raw'], 'git_refspec_force', nci
  dlfunc nci, lib, 'git_refspec_dst_matches', 'ipp'
  set_global ['Git2';'Raw'], 'git_refspec_dst_matches', nci
  dlfunc nci, lib, 'git_refspec_src', 'pp'
  set_global ['Git2';'Raw'], 'git_refspec_src', nci
  dlfunc nci, lib, 'git_refspec_string', 'pp'
  set_global ['Git2';'Raw'], 'git_refspec_string', nci
  dlfunc nci, lib, 'git_remote_get_push_refspecs', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_get_push_refspecs', nci
  dlfunc nci, lib, 'git_remote_add_push', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_add_push', nci
  dlfunc nci, lib, 'git_remote_set_autotag', 'vpp'
  set_global ['Git2';'Raw'], 'git_remote_set_autotag', nci
  dlfunc nci, lib, 'git_remote_remove_refspec', 'ipi'
  set_global ['Git2';'Raw'], 'git_remote_remove_refspec', nci
  dlfunc nci, lib, 'git_remote_supported_url', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_supported_url', nci
  dlfunc nci, lib, 'git_remote_name', 'pp'
  set_global ['Git2';'Raw'], 'git_remote_name', nci
  dlfunc nci, lib, 'git_remote_add_fetch', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_add_fetch', nci
  dlfunc nci, lib, 'git_remote_create_inmemory', 'ipppp'
  set_global ['Git2';'Raw'], 'git_remote_create_inmemory', nci
  dlfunc nci, lib, 'git_remote_connected', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_connected', nci
  dlfunc nci, lib, 'git_remote_stats', 'pp'
  set_global ['Git2';'Raw'], 'git_remote_stats', nci
  dlfunc nci, lib, 'git_remote_create', 'ipppp'
  set_global ['Git2';'Raw'], 'git_remote_create', nci
  dlfunc nci, lib, 'git_remote_disconnect', 'vp'
  set_global ['Git2';'Raw'], 'git_remote_disconnect', nci
  dlfunc nci, lib, 'git_remote_pushurl', 'pp'
  set_global ['Git2';'Raw'], 'git_remote_pushurl', nci
  dlfunc nci, lib, 'git_remote_list', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_list', nci
  dlfunc nci, lib, 'git_remote_set_transport', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_set_transport', nci
  dlfunc nci, lib, 'git_remote_connect', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_connect', nci
  dlfunc nci, lib, 'git_remote_valid_url', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_valid_url', nci
  dlfunc nci, lib, 'git_remote_set_pushurl', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_set_pushurl', nci
  dlfunc nci, lib, 'git_remote_set_update_fetchhead', 'vpi'
  set_global ['Git2';'Raw'], 'git_remote_set_update_fetchhead', nci
  dlfunc nci, lib, 'git_remote_clear_refspecs', 'vp'
  set_global ['Git2';'Raw'], 'git_remote_clear_refspecs', nci
  dlfunc nci, lib, 'git_remote_is_valid_name', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_is_valid_name', nci
  dlfunc nci, lib, 'git_remote_set_callbacks', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_set_callbacks', nci
  dlfunc nci, lib, 'git_remote_ls', 'ippp'
  set_global ['Git2';'Raw'], 'git_remote_ls', nci
  dlfunc nci, lib, 'git_remote_update_tips', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_update_tips', nci
  dlfunc nci, lib, 'git_remote_set_url', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_set_url', nci
  dlfunc nci, lib, 'git_remote_download', 'ippp'
  set_global ['Git2';'Raw'], 'git_remote_download', nci
  dlfunc nci, lib, 'git_remote_set_cred_acquire_cb', 'vppp'
  set_global ['Git2';'Raw'], 'git_remote_set_cred_acquire_cb', nci
  dlfunc nci, lib, 'git_remote_autotag', 'pp'
  set_global ['Git2';'Raw'], 'git_remote_autotag', nci
  dlfunc nci, lib, 'git_remote_stop', 'vp'
  set_global ['Git2';'Raw'], 'git_remote_stop', nci
  dlfunc nci, lib, 'git_remote_url', 'pp'
  set_global ['Git2';'Raw'], 'git_remote_url', nci
  dlfunc nci, lib, 'git_remote_save', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_save', nci
  dlfunc nci, lib, 'git_remote_check_cert', 'vpi'
  set_global ['Git2';'Raw'], 'git_remote_check_cert', nci
  dlfunc nci, lib, 'git_remote_refspec_count', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_refspec_count', nci
  dlfunc nci, lib, 'git_remote_load', 'ippp'
  set_global ['Git2';'Raw'], 'git_remote_load', nci
  dlfunc nci, lib, 'git_remote_rename', 'ipppp'
  set_global ['Git2';'Raw'], 'git_remote_rename', nci
  dlfunc nci, lib, 'git_remote_update_fetchhead', 'ip'
  set_global ['Git2';'Raw'], 'git_remote_update_fetchhead', nci
  dlfunc nci, lib, 'git_remote_free', 'vp'
  set_global ['Git2';'Raw'], 'git_remote_free', nci
  dlfunc nci, lib, 'git_remote_get_fetch_refspecs', 'ipp'
  set_global ['Git2';'Raw'], 'git_remote_get_fetch_refspecs', nci
  dlfunc nci, lib, 'git_repository_open', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_open', nci
  dlfunc nci, lib, 'git_repository_fetchhead_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_repository_fetchhead_foreach', nci
  dlfunc nci, lib, 'git_repository_set_workdir', 'ippi'
  set_global ['Git2';'Raw'], 'git_repository_set_workdir', nci
  dlfunc nci, lib, 'git_repository_set_head_detached', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_set_head_detached', nci
  dlfunc nci, lib, 'git_repository_mergehead_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_repository_mergehead_foreach', nci
  dlfunc nci, lib, 'git_repository_odb', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_odb', nci
  dlfunc nci, lib, 'git_repository_get_namespace', 'pp'
  set_global ['Git2';'Raw'], 'git_repository_get_namespace', nci
  dlfunc nci, lib, 'git_repository_is_bare', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_is_bare', nci
  dlfunc nci, lib, 'git_repository_merge_cleanup', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_merge_cleanup', nci
  dlfunc nci, lib, 'git_repository_head_orphan', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_head_orphan', nci
  dlfunc nci, lib, 'git_repository_open_ext', 'ippip'
  set_global ['Git2';'Raw'], 'git_repository_open_ext', nci
  dlfunc nci, lib, 'git_repository_hashfile', 'ippppp'
  set_global ['Git2';'Raw'], 'git_repository_hashfile', nci
  dlfunc nci, lib, 'git_repository_head_detached', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_head_detached', nci
  dlfunc nci, lib, 'git_repository_set_namespace', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_set_namespace', nci
  dlfunc nci, lib, 'git_repository_config', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_config', nci
  dlfunc nci, lib, 'git_repository_is_shallow', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_is_shallow', nci
  dlfunc nci, lib, 'git_repository_index', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_index', nci
  dlfunc nci, lib, 'git_repository_wrap_odb', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_wrap_odb', nci
  dlfunc nci, lib, 'git_repository_init_ext', 'ippp'
  set_global ['Git2';'Raw'], 'git_repository_init_ext', nci
  dlfunc nci, lib, 'git_repository_workdir', 'pp'
  set_global ['Git2';'Raw'], 'git_repository_workdir', nci
  dlfunc nci, lib, 'git_repository_detach_head', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_detach_head', nci
  dlfunc nci, lib, 'git_repository_init', 'ippi'
  set_global ['Git2';'Raw'], 'git_repository_init', nci
  dlfunc nci, lib, 'git_repository_free', 'vp'
  set_global ['Git2';'Raw'], 'git_repository_free', nci
  dlfunc nci, lib, 'git_repository_state', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_state', nci
  dlfunc nci, lib, 'git_repository_message', 'ipip'
  set_global ['Git2';'Raw'], 'git_repository_message', nci
  dlfunc nci, lib, 'git_repository_set_head', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_set_head', nci
  dlfunc nci, lib, 'git_repository_open_bare', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_open_bare', nci
  dlfunc nci, lib, 'git_repository_refdb', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_refdb', nci
  dlfunc nci, lib, 'git_repository_message_remove', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_message_remove', nci
  dlfunc nci, lib, 'git_repository_path', 'pp'
  set_global ['Git2';'Raw'], 'git_repository_path', nci
  dlfunc nci, lib, 'git_repository_discover', 'ipipip'
  set_global ['Git2';'Raw'], 'git_repository_discover', nci
  dlfunc nci, lib, 'git_repository_is_empty', 'ip'
  set_global ['Git2';'Raw'], 'git_repository_is_empty', nci
  dlfunc nci, lib, 'git_repository_head', 'ipp'
  set_global ['Git2';'Raw'], 'git_repository_head', nci
  dlfunc nci, lib, 'git_reset', 'ippp'
  set_global ['Git2';'Raw'], 'git_reset', nci
  dlfunc nci, lib, 'git_reset_default', 'ippp'
  set_global ['Git2';'Raw'], 'git_reset_default', nci
  dlfunc nci, lib, 'git_revparse', 'ippp'
  set_global ['Git2';'Raw'], 'git_revparse', nci
  dlfunc nci, lib, 'git_revparse_ext', 'ipppp'
  set_global ['Git2';'Raw'], 'git_revparse_ext', nci
  dlfunc nci, lib, 'git_revparse_single', 'ippp'
  set_global ['Git2';'Raw'], 'git_revparse_single', nci
  dlfunc nci, lib, 'git_revwalk_hide_glob', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_hide_glob', nci
  dlfunc nci, lib, 'git_revwalk_new', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_new', nci
  dlfunc nci, lib, 'git_revwalk_hide', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_hide', nci
  dlfunc nci, lib, 'git_revwalk_push_ref', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_push_ref', nci
  dlfunc nci, lib, 'git_revwalk_free', 'vp'
  set_global ['Git2';'Raw'], 'git_revwalk_free', nci
  dlfunc nci, lib, 'git_revwalk_hide_head', 'ip'
  set_global ['Git2';'Raw'], 'git_revwalk_hide_head', nci
  dlfunc nci, lib, 'git_revwalk_next', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_next', nci
  dlfunc nci, lib, 'git_revwalk_reset', 'vp'
  set_global ['Git2';'Raw'], 'git_revwalk_reset', nci
  dlfunc nci, lib, 'git_revwalk_sorting', 'vpi'
  set_global ['Git2';'Raw'], 'git_revwalk_sorting', nci
  dlfunc nci, lib, 'git_revwalk_repository', 'pp'
  set_global ['Git2';'Raw'], 'git_revwalk_repository', nci
  dlfunc nci, lib, 'git_revwalk_push', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_push', nci
  dlfunc nci, lib, 'git_revwalk_hide_ref', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_hide_ref', nci
  dlfunc nci, lib, 'git_revwalk_push_head', 'ip'
  set_global ['Git2';'Raw'], 'git_revwalk_push_head', nci
  dlfunc nci, lib, 'git_revwalk_push_range', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_push_range', nci
  dlfunc nci, lib, 'git_revwalk_push_glob', 'ipp'
  set_global ['Git2';'Raw'], 'git_revwalk_push_glob', nci
  dlfunc nci, lib, 'git_signature_free', 'vp'
  set_global ['Git2';'Raw'], 'git_signature_free', nci
  dlfunc nci, lib, 'git_signature_new', 'ippppi'
  set_global ['Git2';'Raw'], 'git_signature_new', nci
  dlfunc nci, lib, 'git_signature_dup', 'pp'
  set_global ['Git2';'Raw'], 'git_signature_dup', nci
  dlfunc nci, lib, 'git_signature_now', 'ippp'
  set_global ['Git2';'Raw'], 'git_signature_now', nci
  dlfunc nci, lib, 'git_stash_save', 'ippppi'
  set_global ['Git2';'Raw'], 'git_stash_save', nci
  dlfunc nci, lib, 'git_stash_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_stash_foreach', nci
  dlfunc nci, lib, 'git_stash_drop', 'ipi'
  set_global ['Git2';'Raw'], 'git_stash_drop', nci
  dlfunc nci, lib, 'git_status_should_ignore', 'ippp'
  set_global ['Git2';'Raw'], 'git_status_should_ignore', nci
  dlfunc nci, lib, 'git_status_list_new', 'ippp'
  set_global ['Git2';'Raw'], 'git_status_list_new', nci
  dlfunc nci, lib, 'git_status_list_entrycount', 'ip'
  set_global ['Git2';'Raw'], 'git_status_list_entrycount', nci
  dlfunc nci, lib, 'git_status_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_status_foreach', nci
  dlfunc nci, lib, 'git_status_list_free', 'vp'
  set_global ['Git2';'Raw'], 'git_status_list_free', nci
  dlfunc nci, lib, 'git_status_foreach_ext', 'ipppp'
  set_global ['Git2';'Raw'], 'git_status_foreach_ext', nci
  dlfunc nci, lib, 'git_status_file', 'ippp'
  set_global ['Git2';'Raw'], 'git_status_file', nci
  dlfunc nci, lib, 'git_status_byindex', 'ppi'
  set_global ['Git2';'Raw'], 'git_status_byindex', nci
  dlfunc nci, lib, 'git_strarray_copy', 'ipp'
  set_global ['Git2';'Raw'], 'git_strarray_copy', nci
  dlfunc nci, lib, 'git_strarray_free', 'vp'
  set_global ['Git2';'Raw'], 'git_strarray_free', nci
  dlfunc nci, lib, 'git_submodule_reload', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_reload', nci
  dlfunc nci, lib, 'git_submodule_set_update', 'ppp'
  set_global ['Git2';'Raw'], 'git_submodule_set_update', nci
  dlfunc nci, lib, 'git_submodule_fetch_recurse_submodules', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_fetch_recurse_submodules', nci
  dlfunc nci, lib, 'git_submodule_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_owner', nci
  dlfunc nci, lib, 'git_submodule_set_url', 'ipp'
  set_global ['Git2';'Raw'], 'git_submodule_set_url', nci
  dlfunc nci, lib, 'git_submodule_open', 'ipp'
  set_global ['Git2';'Raw'], 'git_submodule_open', nci
  dlfunc nci, lib, 'git_submodule_name', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_name', nci
  dlfunc nci, lib, 'git_submodule_set_fetch_recurse_submodules', 'ipi'
  set_global ['Git2';'Raw'], 'git_submodule_set_fetch_recurse_submodules', nci
  dlfunc nci, lib, 'git_submodule_index_id', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_index_id', nci
  dlfunc nci, lib, 'git_submodule_reload_all', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_reload_all', nci
  dlfunc nci, lib, 'git_submodule_init', 'ipi'
  set_global ['Git2';'Raw'], 'git_submodule_init', nci
  dlfunc nci, lib, 'git_submodule_path', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_path', nci
  dlfunc nci, lib, 'git_submodule_ignore', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_ignore', nci
  dlfunc nci, lib, 'git_submodule_update', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_update', nci
  dlfunc nci, lib, 'git_submodule_status', 'ipp'
  set_global ['Git2';'Raw'], 'git_submodule_status', nci
  dlfunc nci, lib, 'git_submodule_add_finalize', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_add_finalize', nci
  dlfunc nci, lib, 'git_submodule_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_submodule_lookup', nci
  dlfunc nci, lib, 'git_submodule_foreach', 'ipippp'
  set_global ['Git2';'Raw'], 'git_submodule_foreach', nci
  dlfunc nci, lib, 'git_submodule_add_setup', 'ippppi'
  set_global ['Git2';'Raw'], 'git_submodule_add_setup', nci
  dlfunc nci, lib, 'git_submodule_sync', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_sync', nci
  dlfunc nci, lib, 'git_submodule_location', 'ipp'
  set_global ['Git2';'Raw'], 'git_submodule_location', nci
  dlfunc nci, lib, 'git_submodule_wd_id', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_wd_id', nci
  dlfunc nci, lib, 'git_submodule_add_to_index', 'ipi'
  set_global ['Git2';'Raw'], 'git_submodule_add_to_index', nci
  dlfunc nci, lib, 'git_submodule_set_ignore', 'ppp'
  set_global ['Git2';'Raw'], 'git_submodule_set_ignore', nci
  dlfunc nci, lib, 'git_submodule_url', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_url', nci
  dlfunc nci, lib, 'git_submodule_save', 'ip'
  set_global ['Git2';'Raw'], 'git_submodule_save', nci
  dlfunc nci, lib, 'git_submodule_head_id', 'pp'
  set_global ['Git2';'Raw'], 'git_submodule_head_id', nci
  dlfunc nci, lib, 'git_tag_lookup_prefix', 'ipppi'
  set_global ['Git2';'Raw'], 'git_tag_lookup_prefix', nci
  dlfunc nci, lib, 'git_tag_tagger', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_tagger', nci
  dlfunc nci, lib, 'git_tag_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_owner', nci
  dlfunc nci, lib, 'git_tag_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_tag_lookup', nci
  dlfunc nci, lib, 'git_tag_list', 'ipp'
  set_global ['Git2';'Raw'], 'git_tag_list', nci
  dlfunc nci, lib, 'git_tag_peel', 'ipp'
  set_global ['Git2';'Raw'], 'git_tag_peel', nci
  dlfunc nci, lib, 'git_tag_target_type', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_target_type', nci
  dlfunc nci, lib, 'git_tag_name', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_name', nci
  dlfunc nci, lib, 'git_tag_list_match', 'ippp'
  set_global ['Git2';'Raw'], 'git_tag_list_match', nci
  dlfunc nci, lib, 'git_tag_target_id', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_target_id', nci
  dlfunc nci, lib, 'git_tag_delete', 'ipp'
  set_global ['Git2';'Raw'], 'git_tag_delete', nci
  dlfunc nci, lib, 'git_tag_create_frombuffer', 'ipppi'
  set_global ['Git2';'Raw'], 'git_tag_create_frombuffer', nci
  dlfunc nci, lib, 'git_tag_create_lightweight', 'ippppi'
  set_global ['Git2';'Raw'], 'git_tag_create_lightweight', nci
  dlfunc nci, lib, 'git_tag_foreach', 'ippp'
  set_global ['Git2';'Raw'], 'git_tag_foreach', nci
  dlfunc nci, lib, 'git_tag_target', 'ipp'
  set_global ['Git2';'Raw'], 'git_tag_target', nci
  dlfunc nci, lib, 'git_tag_annotation_create', 'ipppppp'
  set_global ['Git2';'Raw'], 'git_tag_annotation_create', nci
  dlfunc nci, lib, 'git_tag_create', 'ippppppi'
  set_global ['Git2';'Raw'], 'git_tag_create', nci
  dlfunc nci, lib, 'git_tag_message', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_message', nci
  dlfunc nci, lib, 'git_tag_id', 'pp'
  set_global ['Git2';'Raw'], 'git_tag_id', nci
  dlfunc nci, lib, 'git_tag_free', 'vp'
  set_global ['Git2';'Raw'], 'git_tag_free', nci
  dlfunc nci, lib, 'git_threads_init', 'iv'
  set_global ['Git2';'Raw'], 'git_threads_init', nci
  dlfunc nci, lib, 'git_threads_shutdown', 'vv'
  set_global ['Git2';'Raw'], 'git_threads_shutdown', nci
  dlfunc nci, lib, 'git_trace_set', 'ipp'
  set_global ['Git2';'Raw'], 'git_trace_set', nci
  dlfunc nci, lib, 'git_transport_local', 'ippp'
  set_global ['Git2';'Raw'], 'git_transport_local', nci
  dlfunc nci, lib, 'git_transport_smart', 'ippp'
  set_global ['Git2';'Raw'], 'git_transport_smart', nci
  dlfunc nci, lib, 'git_smart_subtransport_http', 'ipp'
  set_global ['Git2';'Raw'], 'git_smart_subtransport_http', nci
  dlfunc nci, lib, 'git_transport_dummy', 'ippp'
  set_global ['Git2';'Raw'], 'git_transport_dummy', nci
  dlfunc nci, lib, 'git_cred_ssh_keyfile_passphrase_new', 'ipppp'
  set_global ['Git2';'Raw'], 'git_cred_ssh_keyfile_passphrase_new', nci
  dlfunc nci, lib, 'git_smart_subtransport_git', 'ipp'
  set_global ['Git2';'Raw'], 'git_smart_subtransport_git', nci
  dlfunc nci, lib, 'git_smart_subtransport_ssh', 'ipp'
  set_global ['Git2';'Raw'], 'git_smart_subtransport_ssh', nci
  dlfunc nci, lib, 'git_cred_ssh_publickey_new', 'ippipp'
  set_global ['Git2';'Raw'], 'git_cred_ssh_publickey_new', nci
  dlfunc nci, lib, 'git_transport_new', 'ippp'
  set_global ['Git2';'Raw'], 'git_transport_new', nci
  dlfunc nci, lib, 'git_cred_userpass_plaintext_new', 'ippp'
  set_global ['Git2';'Raw'], 'git_cred_userpass_plaintext_new', nci
  dlfunc nci, lib, 'git_tree_entry_name', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_entry_name', nci
  dlfunc nci, lib, 'git_treebuilder_get', 'ppp'
  set_global ['Git2';'Raw'], 'git_treebuilder_get', nci
  dlfunc nci, lib, 'git_tree_entry_bypath', 'ippp'
  set_global ['Git2';'Raw'], 'git_tree_entry_bypath', nci
  dlfunc nci, lib, 'git_tree_entry_to_object', 'ippp'
  set_global ['Git2';'Raw'], 'git_tree_entry_to_object', nci
  dlfunc nci, lib, 'git_tree_entry_dup', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_entry_dup', nci
  dlfunc nci, lib, 'git_treebuilder_entrycount', 'ip'
  set_global ['Git2';'Raw'], 'git_treebuilder_entrycount', nci
  dlfunc nci, lib, 'git_tree_entry_cmp', 'ipp'
  set_global ['Git2';'Raw'], 'git_tree_entry_cmp', nci
  dlfunc nci, lib, 'git_treebuilder_create', 'ipp'
  set_global ['Git2';'Raw'], 'git_treebuilder_create', nci
  dlfunc nci, lib, 'git_treebuilder_remove', 'ipp'
  set_global ['Git2';'Raw'], 'git_treebuilder_remove', nci
  dlfunc nci, lib, 'git_tree_id', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_id', nci
  dlfunc nci, lib, 'git_treebuilder_insert', 'ippppp'
  set_global ['Git2';'Raw'], 'git_treebuilder_insert', nci
  dlfunc nci, lib, 'git_tree_entry_byname', 'ppp'
  set_global ['Git2';'Raw'], 'git_tree_entry_byname', nci
  dlfunc nci, lib, 'git_tree_entry_filemode', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_entry_filemode', nci
  dlfunc nci, lib, 'git_tree_entry_byoid', 'ppp'
  set_global ['Git2';'Raw'], 'git_tree_entry_byoid', nci
  dlfunc nci, lib, 'git_tree_entry_byindex', 'ppi'
  set_global ['Git2';'Raw'], 'git_tree_entry_byindex', nci
  dlfunc nci, lib, 'git_tree_entry_type', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_entry_type', nci
  dlfunc nci, lib, 'git_tree_entrycount', 'ip'
  set_global ['Git2';'Raw'], 'git_tree_entrycount', nci
  dlfunc nci, lib, 'git_tree_owner', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_owner', nci
  dlfunc nci, lib, 'git_tree_lookup_prefix', 'ipppi'
  set_global ['Git2';'Raw'], 'git_tree_lookup_prefix', nci
  dlfunc nci, lib, 'git_treebuilder_write', 'ippp'
  set_global ['Git2';'Raw'], 'git_treebuilder_write', nci
  dlfunc nci, lib, 'git_tree_entry_id', 'pp'
  set_global ['Git2';'Raw'], 'git_tree_entry_id', nci
  dlfunc nci, lib, 'git_tree_walk', 'ipppp'
  set_global ['Git2';'Raw'], 'git_tree_walk', nci
  dlfunc nci, lib, 'git_tree_entry_free', 'vp'
  set_global ['Git2';'Raw'], 'git_tree_entry_free', nci
  dlfunc nci, lib, 'git_treebuilder_free', 'vp'
  set_global ['Git2';'Raw'], 'git_treebuilder_free', nci
  dlfunc nci, lib, 'git_tree_free', 'vp'
  set_global ['Git2';'Raw'], 'git_tree_free', nci
  dlfunc nci, lib, 'git_tree_lookup', 'ippp'
  set_global ['Git2';'Raw'], 'git_tree_lookup', nci
  dlfunc nci, lib, 'git_treebuilder_filter', 'vppp'
  set_global ['Git2';'Raw'], 'git_treebuilder_filter', nci
  dlfunc nci, lib, 'git_treebuilder_clear', 'vp'
  set_global ['Git2';'Raw'], 'git_treebuilder_clear', nci
.end
