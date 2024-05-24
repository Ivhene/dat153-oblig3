.class public final Lcom/android/dx/dex/file/CatchStructs;
.super Ljava/lang/Object;
.source "CatchStructs.java"


# static fields
.field private static final TRY_ITEM_WRITE_SIZE:I = 0x8


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encodedHandlerHeaderSize:I

.field private encodedHandlers:[B

.field private handlerOffsets:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/dx/dex/code/CatchHandlerList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private table:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;)V
    .locals 2
    .param p1, "code"    # Lcom/android/dx/dex/code/DalvCode;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    .line 77
    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 79
    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 80
    return-void
.end method

.method private static annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 2
    .param p0, "handlers"    # Lcom/android/dx/dex/code/CatchHandlerList;
    .param p1, "offset"    # I
    .param p2, "size"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "printTo"    # Ljava/io/PrintWriter;
    .param p5, "annotateTo"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "s":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 309
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-interface {p5, p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 313
    return-void
.end method

.method private annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 21
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "printTo"    # Ljava/io/PrintWriter;
    .param p3, "annotateTo"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 233
    const/4 v2, 0x0

    if-eqz v9, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v10, v3

    .line 234
    .local v10, "consume":Z
    if-eqz v10, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v11, v3

    .line 235
    .local v11, "amt1":I
    if-eqz v10, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    move v12, v3

    .line 236
    .local v12, "amt2":I
    iget-object v3, v0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v13

    .line 237
    .local v13, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 239
    .local v14, "subPrefix":Ljava/lang/String;
    const-string v3, "tries:"

    if-eqz v10, :cond_3

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_3

    .line 242
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    :goto_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v13, :cond_5

    .line 246
    iget-object v4, v0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v4, v3}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v4

    .line 247
    .local v4, "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v5

    .line 248
    .local v5, "handlers":Lcom/android/dx/dex/code/CatchHandlerList;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    invoke-virtual {v4}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v7

    invoke-static {v7}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "s1":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v14, v7}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "s2":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 253
    invoke-interface {v9, v11, v6}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-interface {v9, v12, v7}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_5

    .line 256
    :cond_4
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .end local v4    # "entry":Lcom/android/dx/dex/code/CatchTable$Entry;
    .end local v5    # "handlers":Lcom/android/dx/dex/code/CatchHandlerList;
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "s2":Ljava/lang/String;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 261
    .end local v3    # "i":I
    :cond_5
    if-nez v10, :cond_6

    .line 263
    return-void

    .line 266
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "handlers:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 267
    iget v2, v0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 268
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-interface {v9, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "lastOffset":I
    const/4 v3, 0x0

    .line 274
    .local v3, "lastList":Lcom/android/dx/dex/code/CatchHandlerList;
    iget-object v4, v0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "lastOffset":I
    .end local v3    # "lastList":Lcom/android/dx/dex/code/CatchHandlerList;
    .local v16, "lastOffset":I
    .local v17, "lastList":Lcom/android/dx/dex/code/CatchHandlerList;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/util/Map$Entry;

    .line 275
    .local v18, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/dex/code/CatchHandlerList;Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/android/dx/dex/code/CatchHandlerList;

    .line 276
    .local v19, "list":Lcom/android/dx/dex/code/CatchHandlerList;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 278
    .local v20, "offset":I
    if-eqz v17, :cond_7

    .line 279
    sub-int v4, v20, v16

    move-object/from16 v2, v17

    move/from16 v3, v16

    move-object v5, v14

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 283
    :cond_7
    move-object/from16 v17, v19

    .line 284
    move/from16 v16, v20

    .line 285
    .end local v18    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/dex/code/CatchHandlerList;Ljava/lang/Integer;>;"
    .end local v19    # "list":Lcom/android/dx/dex/code/CatchHandlerList;
    .end local v20    # "offset":I
    goto :goto_6

    .line 287
    :cond_8
    iget-object v2, v0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v2, v2

    sub-int v4, v2, v16

    move-object/from16 v2, v17

    move/from16 v3, v16

    move-object v5, v14

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/dx/dex/file/CatchStructs;->annotateAndConsumeHandlers(Lcom/android/dx/dex/code/CatchHandlerList;IILjava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 290
    return-void
.end method

.method private finishProcessingIfNecessary()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getCatches()Lcom/android/dx/dex/code/CatchTable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 109
    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;)V
    .locals 11
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 117
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 119
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 120
    .local v0, "typeIds":Lcom/android/dx/dex/file/TypeIdsSection;
    iget-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v1

    .line 122
    .local v1, "size":I
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v4, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    const v3, 0xffff

    if-gt v2, v3, :cond_5

    .line 137
    new-instance v2, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    .line 140
    .local v2, "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    iget-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    .line 141
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    move-result v3

    iput v3, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlerHeaderSize:I

    .line 145
    iget-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 146
    .local v4, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/dex/code/CatchHandlerList;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/CatchHandlerList;

    .line 147
    .local v5, "list":Lcom/android/dx/dex/code/CatchHandlerList;
    invoke-virtual {v5}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    move-result v6

    .line 148
    .local v6, "listSize":I
    invoke-virtual {v5}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    move-result v7

    .line 151
    .local v7, "catchesAll":Z
    invoke-virtual {v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-eqz v7, :cond_1

    .line 155
    add-int/lit8 v8, v6, -0x1

    neg-int v8, v8

    invoke-virtual {v2, v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 156
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 158
    :cond_1
    invoke-virtual {v2, v6}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 161
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_2

    .line 162
    invoke-virtual {v5, v8}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v9

    .line 163
    .local v9, "entry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    nop

    .line 164
    invoke-virtual {v9}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstType;)I

    move-result v10

    .line 163
    invoke-virtual {v2, v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 165
    invoke-virtual {v9}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 161
    .end local v9    # "entry":Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 168
    .end local v8    # "i":I
    :cond_2
    if-eqz v7, :cond_3

    .line 169
    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 171
    .end local v4    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/dx/dex/code/CatchHandlerList;Ljava/lang/Integer;>;"
    .end local v5    # "list":Lcom/android/dx/dex/code/CatchHandlerList;
    .end local v6    # "listSize":I
    .end local v7    # "catchesAll":Z
    :cond_3
    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    .line 174
    return-void

    .line 133
    .end local v2    # "out":Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "too many catch handlers"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public triesSize()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 98
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    return v0
.end method

.method public writeSize()I
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 9
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 193
    invoke-direct {p0}, Lcom/android/dx/dex/file/CatchStructs;->finishProcessingIfNecessary()V

    .line 195
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/dx/dex/file/CatchStructs;->annotateEntries(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v0

    .line 200
    .local v0, "tableSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/dx/dex/file/CatchStructs;->table:Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v2

    .line 202
    .local v2, "one":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchTable$Entry;->getStart()I

    move-result v3

    .line 203
    .local v3, "start":I
    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchTable$Entry;->getEnd()I

    move-result v4

    .line 204
    .local v4, "end":I
    sub-int v5, v4, v3

    .line 206
    .local v5, "insnCount":I
    const/high16 v6, 0x10000

    if-ge v5, v6, :cond_1

    .line 212
    invoke-interface {p2, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 213
    invoke-interface {p2, v5}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 214
    iget-object v6, p0, Lcom/android/dx/dex/file/CatchStructs;->handlerOffsets:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/CatchTable$Entry;->getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v6}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 200
    .end local v2    # "one":Lcom/android/dx/dex/code/CatchTable$Entry;
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "insnCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .restart local v2    # "one":Lcom/android/dx/dex/code/CatchTable$Entry;
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    .restart local v5    # "insnCount":I
    :cond_1
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bogus exception range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 208
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 209
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 217
    .end local v1    # "i":I
    .end local v2    # "one":Lcom/android/dx/dex/code/CatchTable$Entry;
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "insnCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/dx/dex/file/CatchStructs;->encodedHandlers:[B

    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    .line 218
    return-void
.end method
