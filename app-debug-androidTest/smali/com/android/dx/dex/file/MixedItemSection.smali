.class public final Lcom/android/dx/dex/file/MixedItemSection;
.super Lcom/android/dx/dex/file/Section;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/MixedItemSection$SortType;
    }
.end annotation


# static fields
.field private static final TYPE_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final interns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field private writeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$1;

    invoke-direct {v0}, Lcom/android/dx/dex/file/MixedItemSection$1;-><init>()V

    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p3, "alignment"    # I
    .param p4, "sort"    # Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    .line 94
    iput-object p4, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 96
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/OffsettedItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/dx/dex/file/OffsettedItem;

    .line 170
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getAlignment()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v0, v1, :cond_0

    .line 180
    nop

    .line 182
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void

    .line 174
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "item":Lcom/android/dx/dex/file/OffsettedItem;
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .restart local p1    # "item":Lcom/android/dx/dex/file/OffsettedItem;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "item == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 214
    .local p1, "item":Lcom/android/dx/dex/file/OffsettedItem;, "TT;"
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 216
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 218
    .local v0, "result":Lcom/android/dx/dex/file/OffsettedItem;
    if-eqz v0, :cond_0

    .line 219
    return-object v0

    .line 222
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .locals 2
    .param p1, "item"    # Lcom/android/dx/dex/file/Item;

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 115
    .local v0, "oi":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v1

    return v1
.end method

.method public declared-synchronized intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    .local p1, "item":Lcom/android/dx/dex/file/OffsettedItem;, "TT;"
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 196
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .local v0, "result":Lcom/android/dx/dex/file/OffsettedItem;
    if-eqz v0, :cond_0

    .line 199
    monitor-exit p0

    return-object v0

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    .line 203
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    monitor-exit p0

    return-object p1

    .line 193
    .end local v0    # "result":Lcom/android/dx/dex/file/OffsettedItem;
    .end local p0    # "this":Lcom/android/dx/dex/file/MixedItemSection;
    .end local p1    # "item":Lcom/android/dx/dex/file/OffsettedItem;, "TT;"
    :catchall_0
    move-exception p1

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

    .line 101
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public placeItems()V
    .locals 8

    .line 294
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 296
    sget-object v0, Lcom/android/dx/dex/file/MixedItemSection$2;->$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType:[I

    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/MixedItemSection$SortType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
    nop

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 309
    .local v1, "outAt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/OffsettedItem;

    .line 312
    .local v3, "one":Lcom/android/dx/dex/file/OffsettedItem;
    :try_start_0
    invoke-virtual {v3, p0, v1}, Lcom/android/dx/dex/file/OffsettedItem;->place(Lcom/android/dx/dex/file/Section;I)I

    move-result v4

    .line 314
    .local v4, "placedAt":I
    if-lt v4, v1, :cond_0

    .line 319
    invoke-virtual {v3}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v5

    add-int v1, v4, v5

    .line 323
    .end local v4    # "placedAt":I
    nop

    .line 309
    .end local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .restart local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    .restart local v4    # "placedAt":I
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bogus place() result for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sz":I
    .end local v1    # "outAt":I
    .end local v2    # "i":I
    .end local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v4    # "placedAt":I
    .restart local v0    # "sz":I
    .restart local v1    # "outAt":I
    .restart local v2    # "i":I
    .restart local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    :catch_0
    move-exception v4

    .line 321
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...while placing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v5

    throw v5

    .line 326
    .end local v2    # "i":I
    .end local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    iput v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 327
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected prepare0()V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v0

    .line 271
    .local v0, "file":Lcom/android/dx/dex/file/DexFile;
    const/4 v1, 0x0

    .line 273
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 274
    .local v2, "sz":I
    if-lt v1, v2, :cond_0

    .line 275
    nop

    .line 283
    .end local v2    # "sz":I
    return-void

    .line 278
    .restart local v2    # "sz":I
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/file/OffsettedItem;

    .line 280
    .local v3, "one":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v3, v0}, Lcom/android/dx/dex/file/OffsettedItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    .line 278
    .end local v3    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    .end local v2    # "sz":I
    :cond_1
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 9
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 133
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 135
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 139
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 140
    .local v0, "sz":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFileOffset()I

    move-result v1

    .line 141
    .local v1, "offset":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 144
    const-string v2, "<unnamed>"

    .line 147
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xf

    .line 148
    .local v3, "spaceCount":I
    new-array v4, v3, [C

    .line 149
    .local v4, "spaceArr":[C
    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 150
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    .line 152
    .local v5, "spaces":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p1, v7, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_off: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 157
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 158
    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 159
    return-void

    .line 136
    .end local v0    # "sz":I
    .end local v1    # "offset":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "spaceCount":I
    .end local v4    # "spaceArr":[C
    .end local v5    # "spaces":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "write size not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V
    .locals 8
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "itemType"    # Lcom/android/dx/dex/file/ItemType;
    .param p3, "intro"    # Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 238
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 241
    .local v0, "index":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/dx/dex/file/OffsettedItem;>;"
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/OffsettedItem;

    .line 242
    .local v2, "item":Lcom/android/dx/dex/file/OffsettedItem;
    invoke-virtual {v2}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 243
    invoke-virtual {v2}, Lcom/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v2    # "item":Lcom/android/dx/dex/file/OffsettedItem;
    .end local v3    # "label":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 249
    return-void

    .line 252
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 255
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/dx/dex/file/OffsettedItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 256
    .local v4, "label":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/file/OffsettedItem;

    .line 257
    .local v5, "item":Lcom/android/dx/dex/file/OffsettedItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 258
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/dx/dex/file/OffsettedItem;>;"
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "item":Lcom/android/dx/dex/file/OffsettedItem;
    goto :goto_1

    .line 259
    :cond_3
    return-void
.end method

.method public writeSize()I
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 108
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    return v0
.end method

.method protected writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 9
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 332
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    .line 333
    .local v0, "annotates":Z
    const/4 v1, 0x1

    .line 334
    .local v1, "first":Z
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v2

    .line 335
    .local v2, "file":Lcom/android/dx/dex/file/DexFile;
    const/4 v3, 0x0

    .line 337
    .local v3, "at":I
    iget-object v4, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/file/OffsettedItem;

    .line 338
    .local v5, "one":Lcom/android/dx/dex/file/OffsettedItem;
    if-eqz v0, :cond_1

    .line 339
    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x0

    goto :goto_1

    .line 342
    :cond_0
    const/4 v6, 0x0

    const-string v7, "\n"

    invoke-interface {p1, v6, v7}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 346
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 347
    .local v6, "alignMask":I
    add-int v7, v3, v6

    not-int v8, v6

    and-int/2addr v7, v8

    .line 349
    .local v7, "writeAt":I
    if-eq v3, v7, :cond_2

    .line 350
    sub-int v8, v7, v3

    invoke-interface {p1, v8}, Lcom/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    .line 351
    move v3, v7

    .line 354
    :cond_2
    invoke-virtual {v5, v2, p1}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 355
    invoke-virtual {v5}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v8

    add-int/2addr v3, v8

    .line 356
    .end local v5    # "one":Lcom/android/dx/dex/file/OffsettedItem;
    .end local v6    # "alignMask":I
    .end local v7    # "writeAt":I
    goto :goto_0

    .line 358
    :cond_3
    iget v4, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    if-ne v3, v4, :cond_4

    .line 361
    return-void

    .line 359
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "output size mismatch"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
