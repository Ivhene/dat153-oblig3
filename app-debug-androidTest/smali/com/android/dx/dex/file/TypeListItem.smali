.class public final Lcom/android/dx/dex/file/TypeListItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "TypeListItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final ELEMENT_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final list:Lcom/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/TypeList;)V
    .locals 2
    .param p1, "list"    # Lcom/android/dx/rop/type/TypeList;

    .line 47
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 49
    iput-object p1, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    .line 50
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 4
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 67
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 68
    .local v0, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 70
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v3, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/dex/file/TypeIdItem;

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected compareTo0(Lcom/android/dx/dex/file/OffsettedItem;)I
    .locals 3
    .param p1, "other"    # Lcom/android/dx/dex/file/OffsettedItem;

    .line 117
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    .line 118
    .local v0, "thisList":Lcom/android/dx/rop/type/TypeList;
    move-object v1, p1

    check-cast v1, Lcom/android/dx/dex/file/TypeListItem;

    iget-object v1, v1, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    .line 120
    .local v1, "otherList":Lcom/android/dx/rop/type/TypeList;
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->compareContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)I

    move-result v2

    return v2
.end method

.method public getList()Lcom/android/dx/rop/type/TypeList;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/android/dx/rop/type/StdTypeList;->hashContents(Lcom/android/dx/rop/type/TypeList;)I

    move-result v0

    return v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 7
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 93
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 94
    .local v0, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    iget-object v1, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 96
    .local v1, "sz":I
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/TypeListItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type_list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p2, v3, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v3, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    .line 101
    .local v3, "one":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/type/Type;)I

    move-result v4

    .line 102
    .local v4, "idx":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 103
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " // "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    const/4 v6, 0x2

    invoke-interface {p2, v6, v5}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 99
    .end local v3    # "one":Lcom/android/dx/rop/type/Type;
    .end local v4    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 109
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/dx/dex/file/TypeListItem;->list:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v3, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/type/Type;)I

    move-result v3

    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
