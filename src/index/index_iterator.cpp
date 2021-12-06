/**
 * index_iterator.cpp
 */
#include <cassert>

#include "index/index_iterator.h"

namespace scudb {

/*
 * NOTE: you can change the destructor/constructor method here
 * set your own input parameters
 */
    template<typename KeyType, typename ValueType, typename KeyComparator>
    IndexIterator<KeyType, ValueType, KeyComparator>::IndexIterator(
            BPlusTreeLeafPage<KeyType, ValueType, KeyComparator> *leaf, int Index_,
            BufferPoolManager *BufferPoolManager_):Index_(Index_), Leaf_(leaf),
                                                   BufferPoolManager_(BufferPoolManager_) {}

    template<typename KeyType, typename ValueType, typename KeyComparator>
    IndexIterator<KeyType, ValueType, KeyComparator>::~IndexIterator() {
        BufferPoolManager_->FetchPage(Leaf_->GetPageId())->RUnlatch();
        BufferPoolManager_->UnpinPage(Leaf_->GetPageId(), false);
    }

    template<typename KeyType, typename ValueType, typename KeyComparator>
    IndexIterator<KeyType, ValueType, KeyComparator> &IndexIterator<KeyType, ValueType, KeyComparator>::operator++() {
        Index_++;
        if (Index_ == Leaf_->GetSize() && Leaf_->GetNextPageId() != INVALID_PAGE_ID) {
            page_id_t next_page_id = Leaf_->GetNextPageId();
            auto *page = BufferPoolManager_->FetchPage(next_page_id);
            if (page == nullptr) {
                throw Exception(EXCEPTION_TYPE_INDEX, "All pagess are pinned.");
            }
            page->RLatch();
            BufferPoolManager_->FetchPage(Leaf_->GetPageId())->RUnlatch();
            BufferPoolManager_->UnpinPage(Leaf_->GetPageId(), false);
            auto next_leaf = reinterpret_cast<BPlusTreeLeafPage<KeyType, ValueType, KeyComparator> *>(page->GetData());
            assert(next_leaf->IsLeafPage());
            Index_ = 0;
            Leaf_ = next_leaf;
        }
        return *this;
    }

    template<typename KeyType, typename ValueType, typename KeyComparator>
    const MappingType &IndexIterator<KeyType, ValueType, KeyComparator>::operator*() {
        if ((Leaf_ == nullptr || (Index_ == Leaf_->GetSize() && Leaf_->GetNextPageId() == INVALID_PAGE_ID))) {
            throw std::out_of_range("Index out of range");
        }
        return Leaf_->GetItem(Index_);
    }

    template
    class IndexIterator<GenericKey<4>, RID, GenericComparator<4>>;

    template
    class IndexIterator<GenericKey<8>, RID, GenericComparator<8>>;

    template
    class IndexIterator<GenericKey<16>, RID, GenericComparator<16>>;

    template
    class IndexIterator<GenericKey<32>, RID, GenericComparator<32>>;

    template
    class IndexIterator<GenericKey<64>, RID, GenericComparator<64>>;

} // namespace scudb
