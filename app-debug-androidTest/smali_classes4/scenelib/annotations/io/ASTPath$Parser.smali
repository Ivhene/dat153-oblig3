.class Lscenelib/annotations/io/ASTPath$Parser;
.super Ljava/lang/Object;
.source "ASTPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/ASTPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# instance fields
.field st:Ljava/io/StreamTokenizer;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/io/StreamTokenizer;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    .line 355
    return-void
.end method

.method private getTok()V
    .locals 2

    .line 359
    :try_start_0
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    nop

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private gotType(I)Z
    .locals 1
    .param p1, "t"    # I

    .line 366
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    iget v0, v0, Ljava/io/StreamTokenizer;->ttype:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private intVal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 370
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lscenelib/annotations/io/ASTPath$Parser;->gotType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    iget-wide v0, v0, Ljava/io/StreamTokenizer;->nval:D

    double-to-int v0, v0

    .line 372
    .local v0, "n":I
    int-to-double v1, v0

    iget-object v3, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    iget-wide v3, v3, Ljava/io/StreamTokenizer;->nval:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 373
    return v0

    .line 376
    .end local v0    # "n":I
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected integer, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 1
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "legalChildSelectors"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v0

    return-object v0
.end method

.method private newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 5
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "legalChildSelectors"    # [Ljava/lang/String;
    .param p3, "argumentChildSelectors"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 602
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lscenelib/annotations/io/ASTPath$Parser;->gotType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->getTok()V

    .line 608
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->strVal()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "s":Ljava/lang/String;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 610
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    if-eqz p3, :cond_0

    .line 612
    invoke-static {p3, v3}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 613
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->getTok()V

    .line 614
    new-instance v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->intVal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v3, v2}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    .line 616
    :cond_0
    new-instance v1, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-direct {v1, p1, v3}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;)V

    return-object v1

    .line 609
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_2
    new-instance v1, Lscenelib/annotations/io/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (legal arguments - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'.\', got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private strVal()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 380
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lscenelib/annotations/io/ASTPath$Parser;->gotType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    iget-object v0, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v0

    .line 383
    :cond_0
    new-instance v0, Lscenelib/annotations/io/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected string, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/io/ASTPath$Parser;->st:Ljava/io/StreamTokenizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->strVal()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "s":Ljava/lang/String;
    const-string v1, "AnnotatedType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "underlyingType"

    const-string v3, "annotation"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 411
    :cond_0
    const-string v1, "ArrayAccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "expression"

    if-eqz v1, :cond_1

    .line 412
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_ACCESS:Lcom/sun/source/tree/Tree$Kind;

    const-string v3, "index"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 414
    :cond_1
    const-string v1, "ArrayType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "type"

    if-eqz v1, :cond_2

    .line 415
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 417
    :cond_2
    const-string v1, "Assert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "condition"

    if-eqz v1, :cond_3

    .line 418
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ASSERT:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "detail"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 420
    :cond_3
    const-string v1, "Assignment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "variable"

    if-eqz v1, :cond_4

    .line 421
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 423
    :cond_4
    const-string v1, "Binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "leftOperand"

    const-string v3, "rightOperand"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 427
    :cond_5
    const-string v1, "Block"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "statement"

    if-eqz v1, :cond_6

    .line 428
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 431
    :cond_6
    const-string v1, "Case"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 432
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CASE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 435
    :cond_7
    const-string v1, "Catch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "block"

    const-string v8, "parameter"

    if-eqz v1, :cond_8

    .line 436
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CATCH:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 438
    :cond_8
    const-string v1, "Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "bound"

    const-string v10, "typeParameter"

    const-string v11, "initializer"

    if-eqz v1, :cond_9

    .line 439
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CLASS:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v9, v11, v10}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v9, v11, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 444
    :cond_9
    const-string v1, "CompoundAssignment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 446
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 448
    :cond_a
    const-string v1, "ConditionalExpression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 449
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "trueExpression"

    const-string v3, "falseExpression"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 453
    :cond_b
    const-string v1, "DoWhileLoop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 454
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->DO_WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 456
    :cond_c
    const-string v1, "EnhancedForLoop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 457
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->ENHANCED_FOR_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 461
    :cond_d
    const-string v1, "ExpressionStatement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 462
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EXPRESSION_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 464
    :cond_e
    const-string v1, "ForLoop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 465
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->FOR_LOOP:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "update"

    filled-new-array {v11, v4, v2, v6}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v11, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 469
    :cond_f
    const-string v1, "If"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 470
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IF:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "thenStatement"

    const-string v3, "elseStatement"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 473
    :cond_10
    const-string v1, "InstanceOf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 474
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->INSTANCE_OF:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 476
    :cond_11
    const-string v1, "LabeledStatement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 477
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LABELED_STATEMENT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 479
    :cond_12
    const-string v1, "LambdaExpression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "body"

    if-eqz v1, :cond_13

    .line 480
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 483
    :cond_13
    const-string v1, "MemberReference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v12, "typeArgument"

    if-eqz v1, :cond_14

    .line 484
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_REFERENCE:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "qualifierExpression"

    filled-new-array {v2, v12}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 487
    :cond_14
    const-string v1, "MemberSelect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 488
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 490
    :cond_15
    const-string v1, "Method"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 491
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v5, v8, v3, v10}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 495
    :cond_16
    const-string v1, "MethodInvocation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "argument"

    if-eqz v1, :cond_17

    .line 496
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "methodSelect"

    filled-new-array {v12, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 500
    :cond_17
    const-string v1, "NewArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 501
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "dimension"

    filled-new-array {v3, v2, v11}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v4, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 506
    :cond_18
    const-string v1, "NewClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 507
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "identifier"

    const-string v3, "classBody"

    const-string v4, "enclosingExpression"

    filled-new-array {v4, v12, v2, v5, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 512
    :cond_19
    const-string v1, "ParameterizedType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 513
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3, v12}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 516
    :cond_1a
    const-string v1, "Parenthesized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 517
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 519
    :cond_1b
    const-string v1, "Return"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 520
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->RETURN:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 522
    :cond_1c
    const-string v1, "Switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 523
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->SWITCH:Lcom/sun/source/tree/Tree$Kind;

    const-string v3, "case"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 526
    :cond_1d
    const-string v1, "Synchronized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 527
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->SYNCHRONIZED:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 529
    :cond_1e
    const-string v1, "Throw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 530
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->THROW:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 532
    :cond_1f
    const-string v1, "Try"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 533
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->TRY:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "finallyBlock"

    const-string v3, "catch"

    filled-new-array {v7, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 536
    :cond_20
    const-string v1, "TypeCast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 537
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 539
    :cond_21
    const-string v1, "Unary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 541
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNARY_PLUS:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 543
    :cond_22
    const-string v1, "UnionType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 544
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNION_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "typeAlternative"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 547
    :cond_23
    const-string v1, "Variable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 548
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v3, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 550
    :cond_24
    const-string v1, "WhileLoop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 551
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->WHILE_LOOP:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 553
    :cond_25
    const-string v1, "Wildcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 555
    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lscenelib/annotations/io/ASTPath$Parser;->newASTEntry(Lcom/sun/source/tree/Tree$Kind;[Ljava/lang/String;)Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    return-object v1

    .line 559
    :cond_26
    new-instance v1, Lscenelib/annotations/io/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid AST path type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscenelib/annotations/io/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method parseASTPath()Lscenelib/annotations/io/ASTPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lscenelib/annotations/io/ParseException;
        }
    .end annotation

    .line 391
    new-instance v0, Lscenelib/annotations/io/ASTPath;

    invoke-direct {v0}, Lscenelib/annotations/io/ASTPath;-><init>()V

    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath$Parser;->parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    .line 392
    .local v0, "astPath":Lscenelib/annotations/io/ASTPath;
    :goto_0
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lscenelib/annotations/io/ASTPath$Parser;->gotType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    invoke-direct {p0}, Lscenelib/annotations/io/ASTPath$Parser;->getTok()V

    .line 394
    invoke-virtual {p0}, Lscenelib/annotations/io/ASTPath$Parser;->parseASTEntry()Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_0
    return-object v0
.end method
