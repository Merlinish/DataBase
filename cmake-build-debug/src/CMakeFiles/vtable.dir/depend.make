# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

src/CMakeFiles/vtable.dir/buffer/buffer_pool_manager.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/buffer/buffer_pool_manager.cpp
src/CMakeFiles/vtable.dir/buffer/lru_replacer.cpp.o: \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/common/config.h \
 ../src/include/common/rwmutex.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/page/page.h \
 ../src/buffer/lru_replacer.cpp
src/CMakeFiles/vtable.dir/catalog/column.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/common/exception.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/catalog/column.cpp
src/CMakeFiles/vtable.dir/catalog/schema.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/exception.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/catalog/schema.cpp
src/CMakeFiles/vtable.dir/common/config.cpp.o: \
 ../src/include/common/config.h \
 ../src/common/config.cpp
src/CMakeFiles/vtable.dir/concurrency/lock_manager.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/concurrency/lock_manager.cpp
src/CMakeFiles/vtable.dir/concurrency/transaction_manager.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/concurrency/transaction_manager.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/table/table_heap.h \
 ../src/include/table/table_iterator.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/concurrency/transaction_manager.cpp
src/CMakeFiles/vtable.dir/disk/disk_manager.cpp.o: \
 ../src/include/common/config.h \
 ../src/include/common/logger.h \
 ../src/include/disk/disk_manager.h \
 ../src/disk/disk_manager.cpp
src/CMakeFiles/vtable.dir/hash/extendible_hash.cpp.o: \
 ../src/include/common/config.h \
 ../src/include/common/rwmutex.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/page/page.h \
 ../src/hash/extendible_hash.cpp
src/CMakeFiles/vtable.dir/index/b_plus_tree.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/b_plus_tree.h \
 ../src/include/index/generic_key.h \
 ../src/include/index/index_iterator.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_internal_page.h \
 ../src/include/page/b_plus_tree_leaf_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/header_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/index/b_plus_tree.cpp
src/CMakeFiles/vtable.dir/index/b_plus_tree_index.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/b_plus_tree.h \
 ../src/include/index/b_plus_tree_index.h \
 ../src/include/index/generic_key.h \
 ../src/include/index/index.h \
 ../src/include/index/index_iterator.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_internal_page.h \
 ../src/include/page/b_plus_tree_leaf_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/index/b_plus_tree_index.cpp
src/CMakeFiles/vtable.dir/index/index_iterator.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/generic_key.h \
 ../src/include/index/index_iterator.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_leaf_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/index/index_iterator.cpp
src/CMakeFiles/vtable.dir/logging/log_manager.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/logging/log_manager.cpp
src/CMakeFiles/vtable.dir/logging/log_recovery.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/logging/log_recovery.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/logging/log_recovery.cpp
src/CMakeFiles/vtable.dir/page/b_plus_tree_internal_page.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/generic_key.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_internal_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/page/b_plus_tree_internal_page.cpp
src/CMakeFiles/vtable.dir/page/b_plus_tree_leaf_page.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/generic_key.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_leaf_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/page/b_plus_tree_leaf_page.cpp
src/CMakeFiles/vtable.dir/page/b_plus_tree_page.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/generic_key.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/page/b_plus_tree_page.cpp
src/CMakeFiles/vtable.dir/page/header_page.cpp.o: \
 ../src/include/common/config.h \
 ../src/include/common/rwmutex.h \
 ../src/include/page/header_page.h \
 ../src/include/page/page.h \
 ../src/page/header_page.cpp
src/CMakeFiles/vtable.dir/page/table_page.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/page/table_page.cpp
src/CMakeFiles/vtable.dir/table/table_heap.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/table/table_heap.h \
 ../src/include/table/table_iterator.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/table/table_heap.cpp
src/CMakeFiles/vtable.dir/table/table_iterator.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/table/table_heap.h \
 ../src/include/table/table_iterator.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/table/table_iterator.cpp
src/CMakeFiles/vtable.dir/table/tuple.cpp.o: \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/table/tuple.cpp
src/CMakeFiles/vtable.dir/type/bigint_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/bigint_type.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/bigint_type.cpp
src/CMakeFiles/vtable.dir/type/boolean_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/boolean_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/boolean_type.cpp
src/CMakeFiles/vtable.dir/type/decimal_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/decimal_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/decimal_type.cpp
src/CMakeFiles/vtable.dir/type/integer_parent_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/integer_parent_type.cpp
src/CMakeFiles/vtable.dir/type/integer_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/integer_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/integer_type.cpp
src/CMakeFiles/vtable.dir/type/smallint_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/smallint_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/smallint_type.cpp
src/CMakeFiles/vtable.dir/type/tinyint_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/tinyint_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/tinyint_type.cpp
src/CMakeFiles/vtable.dir/type/type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/bigint_type.h \
 ../src/include/type/boolean_type.h \
 ../src/include/type/decimal_type.h \
 ../src/include/type/integer_parent_type.h \
 ../src/include/type/integer_type.h \
 ../src/include/type/limits.h \
 ../src/include/type/numeric_type.h \
 ../src/include/type/smallint_type.h \
 ../src/include/type/tinyint_type.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/include/type/varlen_type.h \
 ../src/type/type.cpp
src/CMakeFiles/vtable.dir/type/value.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/type/value.cpp
src/CMakeFiles/vtable.dir/type/varlen_type.cpp.o: \
 ../src/include/common/exception.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/type_util.h \
 ../src/include/type/value.h \
 ../src/include/type/varlen_type.h \
 ../src/type/varlen_type.cpp
src/CMakeFiles/vtable.dir/vtable/virtual_table.cpp.o: \
 ../src/include/buffer/buffer_pool_manager.h \
 ../src/include/buffer/lru_replacer.h \
 ../src/include/buffer/replacer.h \
 ../src/include/catalog/column.h \
 ../src/include/catalog/schema.h \
 ../src/include/common/config.h \
 ../src/include/common/exception.h \
 ../src/include/common/logger.h \
 ../src/include/common/rid.h \
 ../src/include/common/rwmutex.h \
 ../src/include/common/string_utility.h \
 ../src/include/concurrency/lock_manager.h \
 ../src/include/concurrency/transaction.h \
 ../src/include/concurrency/transaction_manager.h \
 ../src/include/disk/disk_manager.h \
 ../src/include/hash/extendible_hash.h \
 ../src/include/hash/hash_table.h \
 ../src/include/index/b_plus_tree.h \
 ../src/include/index/b_plus_tree_index.h \
 ../src/include/index/generic_key.h \
 ../src/include/index/index.h \
 ../src/include/index/index_iterator.h \
 ../src/include/logging/log_manager.h \
 ../src/include/logging/log_record.h \
 ../src/include/page/b_plus_tree_internal_page.h \
 ../src/include/page/b_plus_tree_leaf_page.h \
 ../src/include/page/b_plus_tree_page.h \
 ../src/include/page/header_page.h \
 ../src/include/page/page.h \
 ../src/include/page/table_page.h \
 ../src/include/sqlite/sqlite3.h \
 ../src/include/sqlite/sqlite3ext.h \
 ../src/include/table/table_heap.h \
 ../src/include/table/table_iterator.h \
 ../src/include/table/tuple.h \
 ../src/include/type/limits.h \
 ../src/include/type/type.h \
 ../src/include/type/type_id.h \
 ../src/include/type/value.h \
 ../src/include/vtable/virtual_table.h \
 ../src/vtable/virtual_table.cpp
