.class abstract Lcom/android/dx/merge/DexMerger$IdMerger;
.super Ljava/lang/Object;
.source "DexMerger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/merge/DexMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "IdMerger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final out:Lcom/android/dex/Dex$Section;

.field final synthetic this$0:Lcom/android/dx/merge/DexMerger;


# direct methods
.method protected constructor <init>(Lcom/android/dx/merge/DexMerger;Lcom/android/dex/Dex$Section;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/merge/DexMerger;
    .param p2, "out"    # Lcom/android/dex/Dex$Section;

    .line 238
    .local p0, "this":Lcom/android/dx/merge/DexMerger$IdMerger;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>;"
    iput-object p1, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->out:Lcom/android/dex/Dex$Section;

    .line 240
    return-void
.end method

.method private readIntoMap(Lcom/android/dex/Dex$Section;Lcom/android/dex/TableOfContents$Section;Lcom/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I
    .locals 4
    .param p1, "in"    # Lcom/android/dex/Dex$Section;
    .param p2, "section"    # Lcom/android/dex/TableOfContents$Section;
    .param p3, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .param p4, "index"    # I
    .param p6, "dex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex$Section;",
            "Lcom/android/dex/TableOfContents$Section;",
            "Lcom/android/dx/merge/IndexMap;",
            "I",
            "Ljava/util/TreeMap<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;I)I"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/android/dx/merge/DexMerger$IdMerger;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>;"
    .local p5, "values":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TT;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 290
    .local v0, "offset":I
    :goto_0
    iget v1, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    if-ge p4, v1, :cond_2

    .line 291
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/dx/merge/DexMerger$IdMerger;->read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object v1

    .line 292
    .local v1, "v":Ljava/lang/Comparable;, "TT;"
    invoke-virtual {p5, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 293
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 294
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 295
    invoke-virtual {p5, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v1    # "v":Ljava/lang/Comparable;, "TT;"
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    return v0
.end method

.method private readUnsortedValues(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)Ljava/util/List;
    .locals 16
    .param p1, "source"    # Lcom/android/dex/Dex;
    .param p2, "indexMap"    # Lcom/android/dx/merge/IndexMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex;",
            "Lcom/android/dx/merge/IndexMap;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/dx/merge/DexMerger$IdMerger<",
            "TT;>.UnsortedValue;>;"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/android/dx/merge/DexMerger$IdMerger;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>;"
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v8

    .line 339
    .local v8, "section":Lcom/android/dex/TableOfContents$Section;
    invoke-virtual {v8}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 344
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;>;"
    iget v0, v8, Lcom/android/dex/TableOfContents$Section;->off:I

    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v11

    .line 345
    .local v11, "in":Lcom/android/dex/Dex$Section;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    iget v0, v8, Lcom/android/dex/TableOfContents$Section;->size:I

    if-ge v12, v0, :cond_1

    .line 346
    invoke-virtual {v11}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v13

    .line 347
    .local v13, "offset":I
    const/4 v0, 0x0

    move-object/from16 v14, p2

    invoke-virtual {v7, v11, v14, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;

    move-result-object v15

    .line 348
    .local v15, "value":Ljava/lang/Comparable;, "TT;"
    new-instance v6, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move v5, v12

    move-object v7, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;-><init>(Lcom/android/dx/merge/DexMerger$IdMerger;Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;Ljava/lang/Comparable;II)V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v13    # "offset":I
    .end local v15    # "value":Ljava/lang/Comparable;, "TT;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p0

    goto :goto_0

    :cond_1
    move-object/from16 v14, p2

    .line 350
    .end local v12    # "i":I
    return-object v9
.end method


# virtual methods
.method abstract getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;
.end method

.method public final mergeSorted()V
    .locals 19

    .line 247
    .local p0, "this":Lcom/android/dx/merge/DexMerger$IdMerger;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>;"
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v14, v0, [Lcom/android/dex/TableOfContents$Section;

    .line 248
    .local v14, "sections":[Lcom/android/dex/TableOfContents$Section;
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v15, v0, [Lcom/android/dex/Dex$Section;

    .line 249
    .local v15, "dexSections":[Lcom/android/dex/Dex$Section;
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v12, v0, [I

    .line 250
    .local v12, "offsets":[I
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    new-array v11, v0, [I

    .line 255
    .local v11, "indexes":[I
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 257
    .local v5, "values":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TT;Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 258
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/dex/Dex;->getTableOfContents()Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v0

    aput-object v0, v14, v7

    .line 259
    aget-object v0, v14, v7

    invoke-virtual {v0}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v0

    aget-object v0, v0, v7

    aget-object v1, v14, v7

    iget v1, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    aput-object v0, v15, v7

    .line 261
    aget-object v1, v15, v7

    aget-object v2, v14, v7

    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    .line 262
    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1400(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dx/merge/IndexMap;

    move-result-object v0

    aget-object v3, v0, v7

    aget v4, v11, v7

    .line 261
    move-object/from16 v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/android/dex/Dex$Section;Lcom/android/dex/TableOfContents$Section;Lcom/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v0

    aput v0, v12, v7

    .line 257
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 264
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 266
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v0

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 267
    return-void

    .line 269
    :cond_2
    iget-object v0, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v1, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->out:Lcom/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "outCount":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    invoke-virtual {v5}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 274
    .local v1, "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 275
    .local v3, "dex":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, v12, v4

    iget-object v6, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v6}, Lcom/android/dx/merge/DexMerger;->access$1400(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dx/merge/IndexMap;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v8, v11, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v11, v7

    invoke-virtual {v13, v4, v6, v8, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/android/dx/merge/IndexMap;II)V

    .line 277
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, v15, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v8, v14, v6

    iget-object v6, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    .line 278
    invoke-static {v6}, Lcom/android/dx/merge/DexMerger;->access$1400(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dx/merge/IndexMap;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v6, v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v10, v11, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 277
    move-object/from16 v6, p0

    move-object/from16 v17, v11

    .end local v11    # "indexes":[I
    .local v17, "indexes":[I
    move-object v11, v5

    move-object/from16 v18, v12

    .end local v12    # "offsets":[I
    .local v18, "offsets":[I
    move/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Lcom/android/dx/merge/DexMerger$IdMerger;->readIntoMap(Lcom/android/dex/Dex$Section;Lcom/android/dex/TableOfContents$Section;Lcom/android/dx/merge/IndexMap;ILjava/util/TreeMap;I)I

    move-result v6

    aput v6, v18, v4

    .line 279
    .end local v3    # "dex":Ljava/lang/Integer;
    move-object/from16 v11, v17

    move-object/from16 v12, v18

    goto :goto_3

    .line 280
    .end local v17    # "indexes":[I
    .end local v18    # "offsets":[I
    .restart local v11    # "indexes":[I
    .restart local v12    # "offsets":[I
    :cond_3
    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .end local v11    # "indexes":[I
    .end local v12    # "offsets":[I
    .restart local v17    # "indexes":[I
    .restart local v18    # "offsets":[I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {v13, v2}, Lcom/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    .line 281
    nop

    .end local v1    # "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/util/List<Ljava/lang/Integer;>;>;"
    add-int/lit8 v0, v0, 0x1

    .line 282
    goto/16 :goto_2

    .line 284
    .end local v17    # "indexes":[I
    .end local v18    # "offsets":[I
    .restart local v11    # "indexes":[I
    .restart local v12    # "offsets":[I
    :cond_4
    iget-object v1, v13, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v1

    iput v0, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 285
    return-void
.end method

.method public final mergeUnsorted()V
    .locals 9

    .line 307
    .local p0, "this":Lcom/android/dx/merge/DexMerger$IdMerger;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>;"
    iget-object v0, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v0}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->out:Lcom/android/dex/Dex$Section;

    invoke-virtual {v1}, Lcom/android/dex/Dex$Section;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v2}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v2}, Lcom/android/dx/merge/DexMerger;->access$1300(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dex/Dex;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v3}, Lcom/android/dx/merge/DexMerger;->access$1400(Lcom/android/dx/merge/DexMerger;)[Lcom/android/dx/merge/IndexMap;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/dx/merge/DexMerger$IdMerger;->readUnsortedValues(Lcom/android/dex/Dex;Lcom/android/dx/merge/IndexMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    .line 315
    iget-object v1, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v1}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v1

    iput v2, v1, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 316
    return-void

    .line 318
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "outCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 322
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 323
    .local v2, "e1":Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;"
    iget v4, v2, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v5, v2, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/android/dx/merge/IndexMap;

    iget v6, v2, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/android/dx/merge/IndexMap;II)V

    .line 325
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    invoke-virtual {v2, v4}, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->compareTo(Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;)I

    move-result v4

    if-nez v4, :cond_2

    .line 326
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;

    .line 327
    .local v3, "e2":Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;"
    iget v5, v3, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->offset:I

    iget-object v6, v3, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->indexMap:Lcom/android/dx/merge/IndexMap;

    iget v7, v3, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->index:I

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/dx/merge/DexMerger$IdMerger;->updateIndex(ILcom/android/dx/merge/IndexMap;II)V

    .line 328
    .end local v3    # "e2":Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;"
    move v3, v4

    goto :goto_2

    .line 330
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_2
    iget-object v4, v2, Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;->value:Ljava/lang/Comparable;

    invoke-virtual {p0, v4}, Lcom/android/dx/merge/DexMerger$IdMerger;->write(Ljava/lang/Comparable;)V

    .line 331
    nop

    .end local v2    # "e1":Lcom/android/dx/merge/DexMerger$IdMerger$UnsortedValue;, "Lcom/android/dx/merge/DexMerger$IdMerger<TT;>.UnsortedValue;"
    add-int/lit8 v1, v1, 0x1

    .line 332
    move v2, v3

    goto :goto_1

    .line 334
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/dx/merge/DexMerger$IdMerger;->this$0:Lcom/android/dx/merge/DexMerger;

    invoke-static {v2}, Lcom/android/dx/merge/DexMerger;->access$1500(Lcom/android/dx/merge/DexMerger;)Lcom/android/dex/TableOfContents;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dx/merge/DexMerger$IdMerger;->getSection(Lcom/android/dex/TableOfContents;)Lcom/android/dex/TableOfContents$Section;

    move-result-object v2

    iput v1, v2, Lcom/android/dex/TableOfContents$Section;->size:I

    .line 335
    return-void
.end method

.method abstract read(Lcom/android/dex/Dex$Section;Lcom/android/dx/merge/IndexMap;I)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dex/Dex$Section;",
            "Lcom/android/dx/merge/IndexMap;",
            "I)TT;"
        }
    .end annotation
.end method

.method abstract updateIndex(ILcom/android/dx/merge/IndexMap;II)V
.end method

.method abstract write(Ljava/lang/Comparable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
