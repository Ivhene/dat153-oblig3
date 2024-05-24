.class public final Lcom/android/dx/dex/file/FieldIdsSection;
.super Lcom/android/dx/dex/file/MemberIdsSection;
.source "FieldIdsSection.java"


# instance fields
.field private final fieldIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstFieldRef;",
            "Lcom/android/dx/dex/file/FieldIdItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 42
    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Lcom/android/dx/dex/file/MemberIdsSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;)V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    .line 45
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 3
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 56
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 62
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    .line 64
    .local v0, "result":Lcom/android/dx/dex/file/IndexedItem;
    if-eqz v0, :cond_0

    .line 68
    return-object v0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0    # "result":Lcom/android/dx/dex/file/IndexedItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I
    .locals 3
    .param p1, "ref"    # Lcom/android/dx/rop/cst/CstFieldRef;

    .line 122
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 128
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/FieldIdItem;

    .line 130
    .local v0, "item":Lcom/android/dx/dex/file/FieldIdItem;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/android/dx/dex/file/FieldIdItem;->getIndex()I

    move-result v1

    return v1

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "item":Lcom/android/dx/dex/file/FieldIdItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;
    .locals 2
    .param p1, "field"    # Lcom/android/dx/rop/cst/CstFieldRef;

    monitor-enter p0

    .line 98
    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdsSection;->throwIfPrepared()V

    .line 104
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/FieldIdItem;

    .line 106
    .local v0, "result":Lcom/android/dx/dex/file/FieldIdItem;
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Lcom/android/dx/dex/file/FieldIdItem;

    invoke-direct {v1, p1}, Lcom/android/dx/dex/file/FieldIdItem;-><init>(Lcom/android/dx/rop/cst/CstFieldRef;)V

    move-object v0, v1

    .line 108
    iget-object v1, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local p0    # "this":Lcom/android/dx/dex/file/FieldIdsSection;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 97
    .end local v0    # "result":Lcom/android/dx/dex/file/FieldIdItem;
    .end local p1    # "field":Lcom/android/dx/rop/cst/CstFieldRef;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 99
    .restart local p1    # "field":Lcom/android/dx/rop/cst/CstFieldRef;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local p1    # "field":Lcom/android/dx/rop/cst/CstFieldRef;
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

    .line 50
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 77
    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdsSection;->throwIfNotPrepared()V

    .line 79
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldIdsSection;->fieldIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 80
    .local v0, "sz":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/FieldIdsSection;->getFileOffset()I

    move-result v1

    .line 82
    .local v1, "offset":I
    :goto_0
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "field_ids_size:  "

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

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field_ids_off:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 87
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 88
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 89
    return-void
.end method
