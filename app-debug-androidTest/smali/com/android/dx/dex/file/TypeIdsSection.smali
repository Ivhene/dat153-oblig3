.class public final Lcom/android/dx/dex/file/TypeIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "TypeIdsSection.java"


# instance fields
.field private final typeIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/type/Type;",
            "Lcom/android/dx/dex/file/TypeIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 44
    const-string v0, "type_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    .line 47
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 5
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 58
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 65
    .local v0, "type":Lcom/android/dx/rop/type/Type;
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/IndexedItem;

    .line 67
    .local v1, "result":Lcom/android/dx/dex/file/IndexedItem;
    if-eqz v1, :cond_0

    .line 71
    return-object v1

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    .end local v1    # "result":Lcom/android/dx/dex/file/IndexedItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Lcom/android/dx/rop/cst/CstType;)I
    .locals 2
    .param p1, "type"    # Lcom/android/dx/rop/cst/CstType;

    .line 180
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/type/Type;)I

    move-result v0

    return v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Lcom/android/dx/rop/type/Type;)I
    .locals 4
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 157
    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 163
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    .line 165
    .local v0, "item":Lcom/android/dx/dex/file/TypeIdItem;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/android/dx/dex/file/TypeIdItem;->getIndex()I

    move-result v1

    return v1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    .end local v0    # "item":Lcom/android/dx/dex/file/TypeIdItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;
    .locals 3
    .param p1, "type"    # Lcom/android/dx/rop/cst/CstType;

    monitor-enter p0

    .line 132
    if-eqz p1, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    .line 138
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 139
    .local v0, "typePerSe":Lcom/android/dx/rop/type/Type;
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/TypeIdItem;

    .line 141
    .local v1, "result":Lcom/android/dx/dex/file/TypeIdItem;
    if-nez v1, :cond_0

    .line 142
    new-instance v2, Lcom/android/dx/dex/file/TypeIdItem;

    invoke-direct {v2, p1}, Lcom/android/dx/dex/file/TypeIdItem;-><init>(Lcom/android/dx/rop/cst/CstType;)V

    move-object v1, v2

    .line 143
    iget-object v2, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local p0    # "this":Lcom/android/dx/dex/file/TypeIdsSection;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 131
    .end local v0    # "typePerSe":Lcom/android/dx/rop/type/Type;
    .end local v1    # "result":Lcom/android/dx/dex/file/TypeIdItem;
    .end local p1    # "type":Lcom/android/dx/rop/cst/CstType;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 133
    .restart local p1    # "type":Lcom/android/dx/rop/cst/CstType;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local p1    # "type":Lcom/android/dx/rop/cst/CstType;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/dex/file/TypeIdItem;
    .locals 3
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    monitor-enter p0

    .line 109
    if-eqz p1, :cond_1

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfPrepared()V

    .line 115
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/TypeIdItem;

    .line 117
    .local v0, "result":Lcom/android/dx/dex/file/TypeIdItem;
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Lcom/android/dx/dex/file/TypeIdItem;

    new-instance v2, Lcom/android/dx/rop/cst/CstType;

    invoke-direct {v2, p1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    invoke-direct {v1, v2}, Lcom/android/dx/dex/file/TypeIdItem;-><init>(Lcom/android/dx/rop/cst/CstType;)V

    move-object v0, v1

    .line 119
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local p0    # "this":Lcom/android/dx/dex/file/TypeIdsSection;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 108
    .end local v0    # "result":Lcom/android/dx/dex/file/TypeIdItem;
    .end local p1    # "type":Lcom/android/dx/rop/type/Type;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 110
    .restart local p1    # "type":Lcom/android/dx/rop/type/Type;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local p1    # "type":Lcom/android/dx/rop/type/Type;
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

    .line 52
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 4

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "i":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/android/dx/dex/file/TypeIdItem;

    invoke-virtual {v3, v0}, Lcom/android/dx/dex/file/TypeIdItem;->setIndex(I)V

    .line 194
    nop

    .end local v2    # "i":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    .line 195
    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 80
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->throwIfNotPrepared()V

    .line 82
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeIdsSection;->typeIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 83
    .local v0, "sz":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->getFileOffset()I

    move-result v1

    .line 85
    .local v1, "offset":I
    :goto_0
    const/high16 v2, 0x10000

    if-gt v0, v2, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type_ids_size:   "

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

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type_ids_off:    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 98
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 99
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 100
    return-void

    .line 86
    :cond_2
    new-instance v3, Lcom/android/dex/DexIndexOverflowException;

    .line 90
    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeIdsSection;->items()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 87
    const-string v4, "Too many type identifiers to fit in one dex file: %1$d; max is %2$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large."

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/dex/DexIndexOverflowException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
