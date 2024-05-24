.class public abstract Lcom/android/dx/dex/file/UniformItemSection;
.super Lcom/android/dx/dex/file/Section;
.source "UniformItemSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p3, "alignment"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
.end method

.method public final getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .locals 3
    .param p1, "item"    # Lcom/android/dx/dex/file/Item;

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/file/IndexedItem;

    .line 99
    .local v0, "ii":Lcom/android/dx/dex/file/IndexedItem;
    invoke-virtual {v0}, Lcom/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/dx/dex/file/IndexedItem;->writeSize()I

    move-result v2

    mul-int/2addr v1, v2

    .line 101
    .local v1, "relativeOffset":I
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/file/UniformItemSection;->getAbsoluteOffset(I)I

    move-result v2

    return v2
.end method

.method protected abstract orderItems()V
.end method

.method protected final prepare0()V
    .locals 3

    .line 70
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    .line 72
    .local v0, "file":Lcom/android/dx/dex/file/DexFile;
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->orderItems()V

    .line 74
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/Item;

    .line 75
    .local v2, "one":Lcom/android/dx/dex/file/Item;
    invoke-virtual {v2, v0}, Lcom/android/dx/dex/file/Item;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    .line 76
    .end local v2    # "one":Lcom/android/dx/dex/file/Item;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public final writeSize()I
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    .line 46
    .local v0, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/dx/dex/file/Item;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 48
    .local v1, "sz":I
    if-nez v1, :cond_0

    .line 49
    const/4 v2, 0x0

    return v2

    .line 53
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/Item;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/Item;->writeSize()I

    move-result v2

    mul-int/2addr v2, v1

    return v2
.end method

.method protected final writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 4
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 82
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    .line 83
    .local v0, "file":Lcom/android/dx/dex/file/DexFile;
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getAlignment()I

    move-result v1

    .line 85
    .local v1, "alignment":I
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/Item;

    .line 86
    .local v3, "one":Lcom/android/dx/dex/file/Item;
    invoke-virtual {v3, v0, p1}, Lcom/android/dx/dex/file/Item;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 87
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->alignTo(I)V

    .line 88
    .end local v3    # "one":Lcom/android/dx/dex/file/Item;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
