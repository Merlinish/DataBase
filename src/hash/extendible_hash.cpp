#include <list>

#include "hash/extendible_hash.h"
#include "page/page.h"

namespace scudb {

/*
 * constructor
 * array_size: fixed array size for each bucket
 */
    template<typename K, typename V>
    ExtendibleHash<K, V>::ExtendibleHash(size_t size) {
        bucket_size = size;
        pair_count = 0;
        Depth = 0;
        bucket.template emplace_back(new Bucket(0, 0));
        bucket_count = 1;
    }

/*
 * helper function to calculate the hashing address of input key
 */
    template<typename K, typename V>
    size_t ExtendibleHash<K, V>::HashKey(const K &key) {
        return std::hash<K>()(key);
    }

/*
 * helper function to return global depth of hash table
 * NOTE: you must implement this function in order to pass test
 */
    template<typename K, typename V>
    int ExtendibleHash<K, V>::GetGlobalDepth() const {
        return Depth;
    }

/*
 * helper function to return local depth of one specific bucket
 * NOTE: you must implement this function in order to pass test
 */
    template<typename K, typename V>
    int ExtendibleHash<K, V>::GetLocalDepth(int bucket_id) const {
        if (bucket[bucket_id]) {
            return bucket[bucket_id]->Depth;
        }
        return -1;
    }

/*
 * helper function to return current number of bucket in hash table
 */
    template<typename K, typename V>
    int ExtendibleHash<K, V>::GetNumBuckets() const {
        return bucket_count;
    }

/*
 * lookup function to find value associate with input key
 */
    template<typename K, typename V>
    bool ExtendibleHash<K, V>::Find(const K &key, V &value) {
        size_t position = HashKey(key) & ((1 << Depth) - 1);
        if (bucket[position]) {
            if (bucket[position]->items.find(key) != bucket[position]->items.end()) {
                value = bucket[position]->items[key];
                return true;
            }
        }
        return false;
    }

/*
 * delete <key,value> entry in hash table
 * Shrink & Combination is not required for this project
 */
    template<typename K, typename V>
    bool ExtendibleHash<K, V>::Remove(const K &key) {
        size_t position = HashKey(key) & ((1 << Depth) - 1);
        size_t count = 0;
        if (bucket[position]) {
            auto temp_bucket = bucket[position];
            count = temp_bucket->items.erase(key);
            pair_count -= count;
        }
        return count != 0;
    }

/*
 * insert <key,value> entry in hash table
 * Split & Redistribute bucket when there is overflow and if necessary increase
 * global depth
 */
    template<typename K, typename V>
    void ExtendibleHash<K, V>::Insert(const K &key, const V &value) {
        size_t bucket_id = HashKey(key) & ((1 << Depth) - 1);
        if (bucket[bucket_id] == nullptr) {
            bucket[bucket_id] = std::make_shared<Bucket>(bucket_id, Depth);
            bucket_count++;
        }
        auto bucket_ = bucket[bucket_id];
        if (bucket_->items.find(key) != bucket_->items.end()) {
            bucket_->items[key] = value;
            return;
        }
        bucket_->items.insert({key, value});
        pair_count++;
        if (bucket_->items.size() > bucket_size) {
            auto pre_Index = bucket_->Id;
            auto pre_Depth = bucket_->Depth;
            std::shared_ptr<Bucket> new_bucket = split(bucket_);
            if (new_bucket == nullptr) {
                bucket_->Depth = pre_Depth;
            }
            if (bucket_->Depth > Depth) {
                auto size = bucket.size();
                auto facter = (1 << (bucket_->Depth - Depth));
                Depth = bucket_->Depth;
                bucket.resize(bucket.size() * facter);
                bucket[bucket_->Id] = bucket_;
                bucket[new_bucket->Id] = new_bucket;
                for (size_t i = 0; i < size; ++i) {
                    if (bucket[i]) {
                        if (i < bucket[i]->Id) {
                            bucket[i].reset();
                        } else {
                            auto step = 1 << bucket[i]->Depth;
                            for (size_t j = i + step; j < bucket.size(); j += step) {
                                bucket[j] = bucket[i];
                            }
                        }
                    }
                }
            } else {
                for (size_t i = pre_Index; i < bucket.size(); i += (1 << pre_Depth)) {
                    bucket[i].reset();
                }
                bucket[bucket_->Id] = bucket_;
                bucket[new_bucket->Id] = new_bucket;
                auto step = 1 << bucket_->Depth;
                for (size_t i = new_bucket->Id + step; i < bucket.size(); i += step) {
                    bucket[i] = bucket_;
                }
                for (size_t i = new_bucket->Id + step; i < bucket.size(); i += step) {
                    bucket[i] = new_bucket;
                }
            }
        }
    }


    template <typename K, typename V>
    std::shared_ptr<typename ExtendibleHash<K, V>::Bucket>
    ExtendibleHash<K, V>::split(std::shared_ptr<Bucket> &b) {
        auto res = std::make_shared<Bucket>(0, b->Depth);
        while(res->items.empty()) {
            b->Depth++;
            res->Depth++;
            for(auto it = b->items.begin(); it != b->items.end();) {
                if (HashKey(it->first) & (1 << (b->Depth - 1))) {
                    res->items.insert(*it);
                    res->Id = HashKey(it->first) & ((1 << b->Depth) - 1);
                    it = b->items.erase(it);
                } else {
                    ++it;
                }
            }
            if(b->items.empty()) {
                b->items.swap(res->items);
                b->Id = res->Id;
            }
        }
        bucket_count++;
        return res;
    }

    template
    class ExtendibleHash<page_id_t, Page *>;

    template
    class ExtendibleHash<Page *, std::list<Page *>::iterator>;

// test purpose
    template
    class ExtendibleHash<int, std::string>;

    template
    class ExtendibleHash<int, std::list<int>::iterator>;

    template
    class ExtendibleHash<int, int>;
} // namespace scudb
