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
