.class public final Lcom/android/dx/dex/file/UniformListItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "UniformListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/dx/dex/file/OffsettedItem;",
        ">",
        "Lcom/android/dx/dex/file/OffsettedItem;"
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x4


# instance fields
.field private final itemType:Lcom/android/dx/dex/file/ItemType;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V
    .locals 2
    .param p1, "itemType"    # Lcom/android/dx/dex/file/ItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/dex/file/ItemType;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p2}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Lcom/android/dx/dex/file/UniformListItem;->writeSize(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 56
    if-eqz p1, :cond_0

    .line 60
    iput-object p2, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/android/dx/dex/file/UniformListItem;->itemType:Lcom/android/dx/dex/file/ItemType;

    .line 62
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "itemType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAlignment(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    .line 75
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/android/dx/dex/file/OffsettedItem;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "items == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "items.size() == 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private headerSize()I
    .locals 1

    .line 212
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment()I

    move-result v0

    return v0
.end method

.method private static writeSize(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;)I"
        }
    .end annotation

    .line 96
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/android/dx/dex/file/OffsettedItem;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 97
    .local v0, "first":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {p0}, Lcom/android/dx/dex/file/UniformListItem;->getAlignment(Ljava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 2
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 120
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/OffsettedItem;

    .line 121
    .local v1, "i":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v1, p1}, Lcom/android/dx/dex/file/OffsettedItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    .line 122
    .end local v1    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 103
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->itemType:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 7
    .param p1, "addedTo"    # Lcom/android/dx/dex/file/Section;
    .param p2, "offset"    # I

    .line 158
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    invoke-direct {p0}, Lcom/android/dx/dex/file/UniformListItem;->headerSize()I

    move-result v0

    add-int/2addr p2, v0

    .line 160
    const/4 v0, 0x1

    .line 161
    .local v0, "first":Z
    const/4 v1, -0x1

    .line 162
    .local v1, "theSize":I
    const/4 v2, -0x1

    .line 164
    .local v2, "theAlignment":I
    iget-object v3, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/file/OffsettedItem;

    .line 165
    .local v4, "i":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v4}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v5

    .line 166
    .local v5, "size":I
    if-eqz v0, :cond_0

    .line 167
    move v1, v5

    .line 168
    invoke-virtual {v4}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v2

    .line 169
    const/4 v0, 0x0

    goto :goto_1

    .line 171
    :cond_0
    if-ne v5, v1, :cond_2

    .line 175
    invoke-virtual {v4}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v6

    if-ne v6, v2, :cond_1

    .line 181
    :goto_1
    invoke-virtual {v4, p1, p2}, Lcom/android/dx/dex/file/OffsettedItem;->place(Lcom/android/dx/dex/file/Section;I)I

    move-result v6

    add-int p2, v6, v5

    .line 182
    .end local v4    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    .end local v5    # "size":I
    goto :goto_0

    .line 176
    .restart local v4    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    .restart local v5    # "size":I
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "item alignment mismatch"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "item size mismatch"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v4    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    .end local v5    # "size":I
    :cond_3
    return-void
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 5

    .line 128
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 131
    .local v1, "first":Z
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object v2, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/OffsettedItem;

    .line 134
    .local v3, "i":Lcom/android/dx/dex/file/OffsettedItem;
    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    goto :goto_1

    .line 137
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_1
    invoke-virtual {v3}, Lcom/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .end local v3    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    goto :goto_0

    .line 142
    :cond_1
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 3
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 188
    .local p0, "this":Lcom/android/dx/dex/file/UniformListItem;, "Lcom/android/dx/dex/file/UniformListItem<TT;>;"
    iget-object v0, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, "size":I
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->offsetString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformListItem;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 195
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 197
    iget-object v1, p0, Lcom/android/dx/dex/file/UniformListItem;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/OffsettedItem;

    .line 198
    .local v2, "i":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 199
    .end local v2    # "i":Lcom/android/dx/dex/file/OffsettedItem;
    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method
