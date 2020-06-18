s/Ucs/UCS/g
s/Uri/URI/g
s/Utc/UTC/g
s/Utf/UTF/g
s/Id/ID/g
s/IDle/Idle/g
s/: \([A-Za-z]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z]*Callback[,)]\)/: @escaping \1/g
s/\(func free.*\) -> String!/@discardableResult \1 -> UnsafeMutableRawPointer?/
s/\(func ref.* -> UnsafeMutablePointer\)/@discardableResult \1/
s/\(func set.* -> UnsafeMutablePointer\)/@discardableResult \1/
s/\(func insert.* -> UnsafeMutablePointer\)/@discardableResult \1/
s/\(func remove.* -> UnsafeMutablePointer\)/@discardableResult \1/
s/\(func prepend.* -> UnsafeMutablePointer\)/@discardableResult \1/
s|^public typealias RWLockWriterLocker|// GRWLockWriterLocker is a void typedef in C|
s|^public typealias RWLockReaderLocker|// GRWLockReaderLocker is a void typedef in C|
s|#glib-Double-ended-Queues|../Protocols/QueueProtocol.html|g
s|#glib-Keyed-Data-Lists|../Protocols/DataProtocol.html|g
s|#glib-Hash-Tables|../Protocols/HashTableProtocol.html|g
s|#glib-N-ary-Trees|../Protocols/NodeProtocol.html|g
s|#glib-Sequences|../Protocols/SequenceProtocol.html|g
s|#glib-Balanced-Binary-Trees|../Protocols/TreeProtocol.html|g
s|Do-nothing destructor for.*`GMutex.*|`GMutex` destructor.  **Please note that deinitialising a locked mutex leads to undefined behaviour!**|
s|// no reference counting for GMutex.*unref.*|g_mutex_clear(cast(_ptr))|
