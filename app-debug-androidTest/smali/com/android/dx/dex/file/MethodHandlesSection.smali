.class public final Lcom/android/dx/dex/file/MethodHandlesSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "MethodHandlesSection.java"


# instance fields
.field private final methodHandles:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/rop/cst/CstMethodHandle;",
            "Lcom/android/dx/dex/file/MethodHandleItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "dexFile"    # Lcom/android/dx/dex/file/DexFile;

    .line 28
    const-string v0, "method_handles"

    const/16 v1, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    .line 29
    return-void
.end method


# virtual methods
.method public get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 3
    .param p1, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 33
    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodHandlesSection;->throwIfNotPrepared()V

    .line 38
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstMethodHandle;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    .line 39
    .local v0, "result":Lcom/android/dx/dex/file/IndexedItem;
    if-eqz v0, :cond_0

    .line 42
    return-object v0

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "not found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    .end local v0    # "result":Lcom/android/dx/dex/file/IndexedItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method indexOf(Lcom/android/dx/rop/cst/CstMethodHandle;)I
    .locals 1
    .param p1, "cstMethodHandle"    # Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 73
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/MethodHandleItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/MethodHandleItem;->getIndex()I

    move-result v0

    return v0
.end method

.method public intern(Lcom/android/dx/rop/cst/CstMethodHandle;)V
    .locals 2
    .param p1, "methodHandle"    # Lcom/android/dx/rop/cst/CstMethodHandle;

    .line 59
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MethodHandlesSection;->throwIfPrepared()V

    .line 65
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/MethodHandleItem;

    .line 66
    .local v0, "result":Lcom/android/dx/dex/file/MethodHandleItem;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Lcom/android/dx/dex/file/MethodHandleItem;

    invoke-direct {v1, p1}, Lcom/android/dx/dex/file/MethodHandleItem;-><init>(Lcom/android/dx/rop/cst/CstMethodHandle;)V

    move-object v0, v1

    .line 68
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void

    .line 60
    .end local v0    # "result":Lcom/android/dx/dex/file/MethodHandleItem;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 55
    iget-object v0, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .locals 4

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/dx/dex/file/MethodHandlesSection;->methodHandles:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/MethodHandleItem;

    .line 49
    .local v2, "item":Lcom/android/dx/dex/file/MethodHandleItem;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-virtual {v2, v0}, Lcom/android/dx/dex/file/MethodHandleItem;->setIndex(I)V

    .line 50
    .end local v2    # "item":Lcom/android/dx/dex/file/MethodHandleItem;
    move v0, v3

    goto :goto_0

    .line 51
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_0
    return-void
.end method
