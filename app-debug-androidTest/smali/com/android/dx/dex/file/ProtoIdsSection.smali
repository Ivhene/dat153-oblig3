.class public final Lcom/android/dx/dex/file/ProtoIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "ProtoIdsSection.java"


# instance fields
.field private final protoIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/type/Prototype;",
            "Lcom/android/dx/dex/file/ProtoIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 43
    const-string v0, "proto_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    .line 46
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 4
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 57
    if-eqz p1, :cond_2

    .line 61
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstProtoRef;

    .line 67
    .local v0, "protoRef":Lcom/android/dx/rop/cst/CstProtoRef;
    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstProtoRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/IndexedItem;

    .line 68
    .local v1, "result":Lcom/android/dx/dex/file/IndexedItem;
    if-eqz v1, :cond_0

    .line 72
    return-object v1

    .line 69
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    .end local v0    # "protoRef":Lcom/android/dx/rop/cst/CstProtoRef;
    .end local v1    # "result":Lcom/android/dx/dex/file/IndexedItem;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cst not instance of CstProtoRef"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Lcom/android/dx/rop/type/Prototype;)I
    .locals 3
    .param p1, "prototype"    # Lcom/android/dx/rop/type/Prototype;

    .line 130
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 136
    iget-object v0, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ProtoIdItem;

    .line 138
    .local v0, "item":Lcom/android/dx/dex/file/ProtoIdItem;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/dx/dex/file/ProtoIdItem;->getIndex()I

    move-result v1

    return v1

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v0    # "item":Lcom/android/dx/dex/file/ProtoIdItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized intern(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/dex/file/ProtoIdItem;
    .locals 2
    .param p1, "prototype"    # Lcom/android/dx/rop/type/Prototype;

    monitor-enter p0

    .line 106
    if-eqz p1, :cond_1

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->throwIfPrepared()V

    .line 112
    iget-object v0, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/ProtoIdItem;

    .line 114
    .local v0, "result":Lcom/android/dx/dex/file/ProtoIdItem;
    if-nez v0, :cond_0

    .line 115
    new-instance v1, Lcom/android/dx/dex/file/ProtoIdItem;

    invoke-direct {v1, p1}, Lcom/android/dx/dex/file/ProtoIdItem;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    move-object v0, v1

    .line 116
    iget-object v1, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local p0    # "this":Lcom/android/dx/dex/file/ProtoIdsSection;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 105
    .end local v0    # "result":Lcom/android/dx/dex/file/ProtoIdItem;
    .end local p1    # "prototype":Lcom/android/dx/rop/type/Prototype;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 107
    .restart local p1    # "prototype":Lcom/android/dx/rop/type/Prototype;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local p1    # "prototype":Lcom/android/dx/rop/type/Prototype;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 4

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, "i":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/dex/file/ProtoIdItem;

    invoke-virtual {v3, v0}, Lcom/android/dx/dex/file/ProtoIdItem;->setIndex(I)V

    .line 152
    nop

    .end local v2    # "i":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 153
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 81
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->throwIfNotPrepared()V

    .line 83
    iget-object v0, p0, Lcom/android/dx/dex/file/ProtoIdsSection;->protoIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 84
    .local v0, "sz":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ProtoIdsSection;->getFileOffset()I

    move-result v1

    .line 86
    .local v1, "offset":I
    :goto_0
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_2

    .line 90
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proto_ids_size:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proto_ids_off:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 95
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 96
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 97
    return-void

    .line 87
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "too many proto ids"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
