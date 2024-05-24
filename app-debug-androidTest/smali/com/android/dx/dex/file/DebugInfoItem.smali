.class public Lcom/android/dx/dex/file/DebugInfoItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "DebugInfoItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x1

.field private static final ENABLE_ENCODER_SELF_CHECK:Z = false


# instance fields
.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private encoded:[B

.field private final isStatic:Z

.field private final ref:Lcom/android/dx/rop/cst/CstMethodRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/DalvCode;ZLcom/android/dx/rop/cst/CstMethodRef;)V
    .locals 2
    .param p1, "code"    # Lcom/android/dx/dex/code/DalvCode;
    .param p2, "isStatic"    # Z
    .param p3, "ref"    # Lcom/android/dx/rop/cst/CstMethodRef;

    .line 44
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 46
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    .line 51
    iput-boolean p2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    .line 52
    iput-object p3, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 53
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .locals 1
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debugPrint"    # Ljava/io/PrintWriter;
    .param p4, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p5, "consume"    # Z

    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    .line 155
    .local v0, "result":[B
    return-object v0
.end method

.method private encode0(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B
    .locals 17
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debugPrint"    # Ljava/io/PrintWriter;
    .param p4, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p5, "consume"    # Z

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    move-result-object v3

    .line 173
    .local v3, "positions":Lcom/android/dx/dex/code/PositionList;
    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    move-result-object v12

    .line 174
    .local v12, "locals":Lcom/android/dx/dex/code/LocalList;
    iget-object v4, v0, Lcom/android/dx/dex/file/DebugInfoItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v13

    .line 175
    .local v13, "insns":Lcom/android/dx/dex/code/DalvInsnList;
    invoke-virtual {v13}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v14

    .line 176
    .local v14, "codeSize":I
    invoke-virtual {v13}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v15

    .line 178
    .local v15, "regSize":I
    new-instance v16, Lcom/android/dx/dex/file/DebugInfoEncoder;

    iget-boolean v10, v0, Lcom/android/dx/dex/file/DebugInfoItem;->isStatic:Z

    iget-object v11, v0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    move-object/from16 v4, v16

    move-object v5, v3

    move-object v6, v12

    move-object/from16 v7, p1

    move v8, v14

    move v9, v15

    invoke-direct/range {v4 .. v11}, Lcom/android/dx/dex/file/DebugInfoEncoder;-><init>(Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;Lcom/android/dx/dex/file/DexFile;IIZLcom/android/dx/rop/cst/CstMethodRef;)V

    .line 184
    .local v4, "encoder":Lcom/android/dx/dex/file/DebugInfoEncoder;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 185
    invoke-virtual {v4}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object v5

    move/from16 v6, p5

    move-object v7, v5

    move-object/from16 v5, p2

    .local v5, "result":[B
    goto :goto_0

    .line 187
    .end local v5    # "result":[B
    :cond_0
    move-object/from16 v5, p2

    move/from16 v6, p5

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/android/dx/dex/file/DebugInfoEncoder;->convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v7

    .line 191
    .local v7, "result":[B
    :goto_0
    return-object v7
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;

    .line 65
    return-void
.end method

.method public annotateTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 98
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 99
    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 108
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 109
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 6
    .param p1, "addedTo"    # Lcom/android/dx/dex/file/Section;
    .param p2, "offset"    # I

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    .line 74
    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/DebugInfoItem;->setWriteSize(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while placing debug info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/DebugInfoItem;->ref:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 77
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object v1

    throw v1
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 7
    .param p1, "file"    # Lcom/android/dx/dex/file/DexFile;
    .param p2, "out"    # Lcom/android/dx/util/AnnotatedOutput;

    .line 114
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DebugInfoItem;->offsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/dex/file/DebugInfoItem;->encode(Lcom/android/dx/dex/file/DexFile;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/dx/util/AnnotatedOutput;Z)[B

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoItem;->encoded:[B

    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    .line 125
    return-void
.end method
