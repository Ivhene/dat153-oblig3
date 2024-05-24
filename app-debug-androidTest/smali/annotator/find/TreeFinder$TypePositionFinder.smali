.class Lannotator/find/TreeFinder$TypePositionFinder;
.super Lcom/sun/source/util/TreeScanner;
.source "TreeFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/TreeFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypePositionFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/TreeScanner<",
        "Lorg/checkerframework/org/plumelib/util/Pair<",
        "Lscenelib/annotations/io/ASTRecord;",
        "Ljava/lang/Integer;",
        ">;",
        "Lannotator/find/Insertion;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lannotator/find/TreeFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 256
    const-class v0, Lannotator/find/TreeFinder;

    return-void
.end method

.method private constructor <init>(Lannotator/find/TreeFinder;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-direct {p0}, Lcom/sun/source/util/TreeScanner;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lannotator/find/TreeFinder;Lannotator/find/TreeFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lannotator/find/TreeFinder;
    .param p2, "x1"    # Lannotator/find/TreeFinder$1;

    .line 256
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$TypePositionFinder;-><init>(Lannotator/find/TreeFinder;)V

    return-void
.end method

.method private arrayContentType(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)Lcom/sun/tools/javac/tree/JCTree;
    .locals 3
    .param p1, "att"    # Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 484
    move-object v0, p1

    .line 486
    .local v0, "node":Lcom/sun/tools/javac/tree/JCTree;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_0

    .line 488
    return-object v0
.end method

.method private arrayInsertPos(II)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 532
    :try_start_0
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v0}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 533
    .local v0, "s":Ljava/lang/CharSequence;
    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    const/16 v3, 0x5b

    invoke-static {v2, v3, p1, p2, v1}, Lannotator/find/TreeFinder;->access$500(Lannotator/find/TreeFinder;CIII)I

    move-result v2

    .line 535
    .local v2, "pos":I
    if-gez v2, :cond_2

    .line 537
    const/16 v3, 0x2e

    invoke-static {v3}, Lannotator/find/TreeFinder;->access$600(C)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "nonDot":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?:(?:\\.\\.?)?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")*(\\.\\.\\.)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "regex":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 540
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 542
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    move v2, v1

    .line 545
    :cond_0
    if-ltz v2, :cond_1

    goto :goto_0

    .line 546
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v7, "no \"[\" or \"...\" in array type"

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "start":I
    .end local p2    # "end":I
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v3    # "nonDot":Ljava/lang/String;
    .end local v4    # "regex":Ljava/lang/String;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_2
    :goto_0
    return v2

    .line 550
    .end local v0    # "s":Ljava/lang/CharSequence;
    .end local v2    # "pos":I
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private arrayLevels(Lcom/sun/source/tree/Tree;)I
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "result":I
    :goto_0
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 478
    move-object v1, p1

    check-cast v1, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object p1

    goto :goto_0

    .line 480
    :cond_0
    return v0
.end method

.method private arrayLevels(Lcom/sun/tools/javac/code/Type;)I
    .locals 2
    .param p1, "t"    # Lcom/sun/tools/javac/code/Type;

    .line 461
    new-instance v0, Lannotator/find/TreeFinder$TypePositionFinder$1;

    invoke-direct {v0, p0}, Lannotator/find/TreeFinder$TypePositionFinder$1;-><init>(Lannotator/find/TreeFinder$TypePositionFinder;)V

    .line 471
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getBaseTypePosition(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 5
    .param p1, "t"    # Lcom/sun/tools/javac/tree/JCTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 269
    nop

    :goto_0
    sget-object v0, Lannotator/find/TreeFinder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unrecognized type (kind=%s, class=%s): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 315
    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0

    .line 304
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    iget-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    .line 305
    goto :goto_0

    .line 301
    :pswitch_3
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;I)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0

    .line 298
    :pswitch_4
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object p1, v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 299
    goto :goto_0

    .line 274
    :pswitch_5
    move-object v0, p1

    .line 276
    .local v0, "exp":Lcom/sun/tools/javac/tree/JCTree;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 277
    .local v1, "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 278
    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v2

    const/16 v3, 0x2e

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    .line 281
    invoke-static {v2}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v4

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v4

    .line 280
    invoke-static {v2, v3, v4}, Lannotator/find/TreeFinder;->access$200(Lannotator/find/TreeFinder;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 279
    invoke-direct {p0, v0, v2}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;I)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v2

    return-object v2

    .line 283
    .end local v1    # "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_1
    instance-of v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 284
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v2, :cond_0

    .line 285
    :cond_2
    if-eqz v0, :cond_4

    .line 286
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_3

    .line 287
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 288
    .local v1, "sym":Lcom/sun/tools/javac/code/Symbol;
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->isStatic()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v4, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v4, :cond_3

    .line 289
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;I)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v2

    return-object v2

    .line 292
    .end local v1    # "sym":Lcom/sun/tools/javac/code/Symbol;
    :cond_3
    move-object p1, v0

    .line 294
    :cond_4
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    .line 296
    invoke-static {v1}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {p1, v2}, Lcom/sun/tools/javac/tree/JCTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v2

    .line 295
    invoke-static {v1, v3, v2}, Lannotator/find/TreeFinder;->access$200(Lannotator/find/TreeFinder;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 294
    invoke-direct {p0, p1, v1}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;I)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1

    .line 272
    .end local v0    # "exp":Lcom/sun/tools/javac/tree/JCTree;
    :pswitch_6
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I
    .locals 7
    .param p1, "tree"    # Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 592
    instance-of v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v0, :cond_6

    .line 593
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 594
    .local v0, "na":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v1}, Lannotator/find/TreeFinder$TypePositionFinder;->arrayLevels(Lcom/sun/tools/javac/code/Type;)I

    move-result v1

    return v1

    .line 598
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v1}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 601
    :cond_1
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_5

    .line 602
    const/4 v1, 0x0

    .line 603
    .local v1, "maxDimsSize":I
    iget-object v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 604
    .local v3, "elem":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    instance-of v4, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v4, :cond_3

    .line 605
    move-object v4, v3

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    invoke-direct {p0, v4}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v4

    .line 606
    .local v4, "elemDimsSize":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 607
    .end local v4    # "elemDimsSize":I
    :cond_2
    goto :goto_1

    :cond_3
    instance-of v4, v3, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    if-eqz v4, :cond_2

    .line 609
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "JCArrayTypeTree: %s%n"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 611
    .end local v3    # "elem":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :goto_1
    goto :goto_0

    .line 612
    :cond_4
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 601
    .end local v1    # "maxDimsSize":I
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 613
    .end local v0    # "na":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    :cond_6
    instance-of v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    if-eqz v0, :cond_7

    .line 614
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v0

    return v0

    .line 615
    :cond_7
    instance-of v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    if-eqz v0, :cond_8

    .line 616
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 618
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private largestContainingArray(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ArrayTypeTree;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/Tree;

    .line 492
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-virtual {v0, p1}, Lannotator/find/TreeFinder;->getPath(Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 493
    .local v0, "p":Lcom/sun/source/util/TreePath;
    invoke-static {v0}, Lannotator/find/TreeFinder;->largestContainingArray(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 494
    .local v1, "result":Lcom/sun/source/tree/Tree;
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 495
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/ArrayTypeTree;

    return-object v2

    .line 494
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 2
    .param p1, "t"    # Lcom/sun/tools/javac/tree/JCTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v0, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    iget v1, p1, Lcom/sun/tools/javac/tree/JCTree;->pos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private pathAndPos(Lcom/sun/tools/javac/tree/JCTree;I)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 2
    .param p1, "t"    # Lcom/sun/tools/javac/tree/JCTree;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "I)",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v0, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 11
    .param p1, "node"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ArrayTypeTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 500
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v1, "TypePositionFinder.visitArrayType(%s)%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 502
    .local v0, "att":Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
    sget-object v1, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 503
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->getPreferredPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 502
    const-string v3, "TypePositionFinder.visitArrayType(%s) preferred = %s%n"

    invoke-virtual {v1, v3, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$TypePositionFinder;->largestContainingArray(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/ArrayTypeTree;

    move-result-object v1

    .line 508
    .local v1, "largest":Lcom/sun/source/tree/ArrayTypeTree;
    invoke-direct {p0, v1}, Lannotator/find/TreeFinder$TypePositionFinder;->arrayLevels(Lcom/sun/source/tree/Tree;)I

    move-result v2

    .line 509
    .local v2, "largestLevels":I
    invoke-direct {p0, p1}, Lannotator/find/TreeFinder$TypePositionFinder;->arrayLevels(Lcom/sun/source/tree/Tree;)I

    move-result v3

    .line 510
    .local v3, "levels":I
    invoke-direct {p0, v0}, Lannotator/find/TreeFinder$TypePositionFinder;->arrayContentType(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree;->getPreferredPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 511
    .local v4, "start":I
    iget-object v5, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v5}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v5

    .line 512
    .local v5, "end":I
    invoke-direct {p0, v4, v5}, Lannotator/find/TreeFinder$TypePositionFinder;->arrayInsertPos(II)I

    move-result v6

    .line 514
    .local v6, "pos":I
    sget-object v7, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "  levels=%d largestLevels=%d%n"

    invoke-virtual {v7, v9, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    move v7, v3

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 516
    iget-object v8, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    add-int/lit8 v9, v6, 0x1

    const/16 v10, 0x5b

    invoke-static {v8, v10, v9}, Lannotator/find/TreeFinder;->access$200(Lannotator/find/TreeFinder;CI)I

    move-result v6

    .line 517
    sget-object v8, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "  pos %d at i=%d%n"

    invoke-virtual {v8, v10, v9}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 519
    .end local v7    # "i":I
    :cond_0
    iget-object v7, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v7, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic visitClass(Lcom/sun/source/tree/ClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitClass(Lcom/sun/source/tree/ClassTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitClass(Lcom/sun/source/tree/ClassTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/ClassTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ClassTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 564
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TypePositionFinder.visitClass%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    .line 566
    .local v0, "cd":Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    .line 567
    .local v1, "t":Lcom/sun/tools/javac/tree/JCTree;
    :goto_0
    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v2, v0}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getPreferredPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitCompilationUnit(Lcom/sun/source/tree/CompilationUnitTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/CompilationUnitTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 557
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TypePositionFinder.visitCompilationUnit%n"

    invoke-virtual {v0, v2, v1}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 559
    .local v0, "cu":Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v1, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->getStartPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 12
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/IdentifierTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v1, "TypePositionFinder.visitIdentifier(%s)%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v0}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v0

    invoke-static {v0}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/ASTRecord;

    .line 373
    .local v0, "rec":Lscenelib/annotations/io/ASTRecord;
    invoke-virtual {p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v1

    invoke-virtual {v1}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v1

    .line 374
    .local v1, "astPath":Lscenelib/annotations/io/ASTPath;
    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v2, p1}, Lannotator/find/TreeFinder;->access$400(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 375
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    const/4 v3, 0x0

    .line 376
    .local v3, "i":Ljava/lang/Integer;
    move-object v4, p1

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    .line 380
    .local v4, "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCIdent;
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_3

    .line 382
    sget-object v5, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v6, "TypePositionFinder.visitIdentifier: recognized array%n"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    const-string v5, "type"

    if-nez v1, :cond_0

    .line 384
    new-instance v6, Lscenelib/annotations/io/ASTPath$ASTEntry;

    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v8, v5, v7}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    .local v6, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    iget-object v7, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v7, v2}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v7

    invoke-virtual {v7, v6}, Lscenelib/annotations/io/ASTRecord;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v7

    iget-object v1, v7, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    goto :goto_0

    .line 387
    .end local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 389
    .restart local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :goto_0
    invoke-virtual {v6, v5}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 390
    invoke-virtual {v6}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v5

    .line 391
    .local v5, "n":I
    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->getStartPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 392
    move-object v7, v2

    check-cast v7, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v7}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 393
    iget-object v7, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v2

    check-cast v9, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    iget-object v10, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    .line 394
    invoke-static {v10}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v10

    iget-object v10, v10, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v9, v10}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v9

    add-int/lit8 v10, v5, 0x1

    .line 393
    const/16 v11, 0x5b

    invoke-static {v7, v11, v8, v9, v10}, Lannotator/find/TreeFinder;->access$500(Lannotator/find/TreeFinder;CIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 397
    .end local v5    # "n":I
    :cond_1
    if-nez v3, :cond_2

    .line 398
    iget-object v5, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v5}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v5

    iget-object v5, v5, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 400
    .end local v6    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    :cond_2
    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v5

    sget-object v6, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v5, v6, :cond_5

    .line 401
    sget-object v5, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v6, "TypePositionFinder.visitIdentifier: recognized class%n"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    move-object v5, v2

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 403
    .local v5, "nc":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    sget-object v6, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    iget-object v7, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v8, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 405
    invoke-virtual {v8}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getPreferredPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 403
    const-string v8, "TypePositionFinder.visitIdentifier: clazz %s (%d) constructor %s%n"

    invoke-virtual {v6, v8, v7}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-object v6, v5, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v6}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getPreferredPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 407
    if-nez v1, :cond_4

    .line 408
    iget-object v6, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v6, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v6

    iget-object v1, v6, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 410
    .end local v5    # "nc":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    :cond_4
    goto :goto_1

    .line 411
    :cond_5
    iget-object v5, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v5, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    .line 412
    .local v5, "astRecord":Lscenelib/annotations/io/ASTRecord;
    iget-object v1, v5, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    .line 413
    move-object v6, p1

    check-cast v6, Lcom/sun/tools/javac/tree/JCTree$JCIdent;

    iget v6, v6, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->pos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 416
    .end local v5    # "astRecord":Lscenelib/annotations/io/ASTRecord;
    :goto_1
    sget-object v5, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    .line 417
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    filled-new-array {p1, v3, v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 416
    const-string v7, "visitIdentifier(%s) => %d where parent (%s) = %s%n"

    invoke-virtual {v5, v7, v6}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v0, v1}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MemberSelectTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 423
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v1, "TypePositionFinder.visitMemberSelect(%s)%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 425
    .local v0, "raw":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v1, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v1

    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    .line 426
    invoke-static {v2}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v2

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 425
    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitMethod(Lcom/sun/source/tree/MethodTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitMethod(Lcom/sun/source/tree/MethodTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/MethodTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 343
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "TypePositionFinder.visitMethod%n"

    invoke-virtual {v0, v3, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-super {p0, p1, p2}, Lcom/sun/source/util/TreeScanner;->visitMethod(Lcom/sun/source/tree/MethodTree;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 347
    .local v0, "jcnode":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReceiverParameter()Lcom/sun/source/tree/VariableTree;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 348
    .local v2, "jcvar":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1

    .line 350
    :cond_0
    const/4 v3, -0x1

    .line 351
    .local v3, "pos":I
    iget-object v4, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v4, v0}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    .line 352
    const-string v6, "parameter"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lscenelib/annotations/io/ASTRecord;->extend(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;I)Lscenelib/annotations/io/ASTRecord;

    move-result-object v4

    .line 354
    .local v4, "astPath":Lscenelib/annotations/io/ASTRecord;
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 356
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v1, v0}, Lannotator/find/TreeFinder;->access$300(Lannotator/find/TreeFinder;Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)I

    move-result v1

    .line 357
    .end local v3    # "pos":I
    .local v1, "pos":I
    if-ltz v1, :cond_1

    iget-object v3, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    const/16 v5, 0x28

    invoke-static {v3, v5, v1}, Lannotator/find/TreeFinder;->access$200(Lannotator/find/TreeFinder;CI)I

    move-result v1

    .line 358
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_2

    goto :goto_0

    .line 359
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find param opening paren for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    .end local v1    # "pos":I
    .restart local v3    # "pos":I
    :cond_3
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v1

    .line 365
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 19
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "TypePositionFinder.visitNewArray%n"

    invoke-virtual {v3, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    move-object v3, v1

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 631
    .local v3, "na":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    nop

    .line 632
    invoke-virtual/range {p2 .. p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v5

    invoke-virtual {v5}, Lannotator/find/Criteria;->getGenericArrayLocation()Lannotator/find/GenericArrayLocationCriterion;

    move-result-object v5

    .line 633
    .local v5, "galc":Lannotator/find/GenericArrayLocationCriterion;
    iget-object v6, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v6}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v6

    invoke-static {v6}, Lscenelib/annotations/io/ASTIndex;->indexOf(Lcom/sun/source/tree/CompilationUnitTree;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/io/ASTRecord;

    .line 634
    .local v6, "rec":Lscenelib/annotations/io/ASTRecord;
    invoke-virtual/range {p2 .. p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v7

    invoke-virtual {v7}, Lannotator/find/Criteria;->getASTPath()Lscenelib/annotations/io/ASTPath;

    move-result-object v7

    .line 635
    .local v7, "astPath":Lscenelib/annotations/io/ASTPath;
    const/4 v8, 0x0

    .line 639
    .local v8, "childSelector":Ljava/lang/String;
    invoke-direct {v0, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->getDimsSize(Lcom/sun/tools/javac/tree/JCTree$JCExpression;)I

    move-result v9

    .line 640
    .local v9, "dimsSize":I
    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lannotator/find/GenericArrayLocationCriterion;->getLocation()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 642
    .local v4, "dim":I
    :goto_0
    const-string v10, "type"

    if-nez v7, :cond_1

    .line 643
    iget-object v11, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v11, v1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v11

    iget-object v11, v11, Lscenelib/annotations/io/ASTRecord;->astPath:Lscenelib/annotations/io/ASTPath;

    invoke-virtual {v11, v4}, Lscenelib/annotations/io/ASTPath;->extendNewArray(I)Lscenelib/annotations/io/ASTPath;

    move-result-object v7

    .line 644
    const-string v8, "type"

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 646
    :cond_1
    const/4 v11, 0x0

    .line 647
    .local v11, "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v7}, Lscenelib/annotations/io/ASTPath;->size()I

    move-result v12

    .line 648
    .local v12, "n":I
    move v13, v12

    .line 650
    .local v13, "i":I
    :cond_2
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_3

    .line 651
    invoke-virtual {v7, v13}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    check-cast v11, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 652
    invoke-virtual {v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v14

    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    if-ne v14, v15, :cond_2

    .line 654
    :cond_3
    if-ltz v13, :cond_20

    .line 655
    add-int/lit8 v14, v13, 0x1

    if-le v12, v14, :cond_b

    .line 657
    add-int/lit8 v10, v4, 0x1

    if-ne v10, v9, :cond_a

    .line 658
    iget-object v10, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 659
    .local v10, "typeTree":Lcom/sun/source/tree/Tree;
    add-int v14, v13, v4

    add-int/lit8 v14, v14, 0x1

    .line 660
    .local v14, "j":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4

    .line 661
    move-object v15, v10

    check-cast v15, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v15}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v10

    goto :goto_1

    .line 664
    :cond_4
    :goto_2
    if-ge v14, v12, :cond_7

    .line 665
    invoke-virtual {v7, v14}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lscenelib/annotations/io/ASTPath$ASTEntry;

    .line 666
    .local v15, "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    sget-object v16, Lannotator/find/TreeFinder$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {v15}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getTreeKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 693
    :pswitch_0
    move/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "dim":I
    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v16, "dim":I
    .local v18, "galc":Lannotator/find/GenericArrayLocationCriterion;
    goto/16 :goto_4

    .line 668
    .end local v16    # "dim":I
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v4    # "dim":I
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :pswitch_1
    move-object/from16 v16, v10

    check-cast v16, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface/range {v16 .. v16}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v10

    .line 669
    goto :goto_2

    .line 683
    :pswitch_2
    move/from16 v16, v4

    .end local v4    # "dim":I
    .restart local v16    # "dim":I
    const-string v4, "typeArgument"

    invoke-virtual {v15, v4}, Lscenelib/annotations/io/ASTPath$ASTEntry;->childSelectorIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 684
    invoke-virtual {v15}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    .line 685
    .local v4, "arg":I
    move-object/from16 v17, v10

    check-cast v17, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 686
    move-object/from16 v18, v5

    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    invoke-interface/range {v17 .. v17}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    .line 687
    .local v5, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lcom/sun/source/tree/Tree;

    .line 688
    .end local v5    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    .end local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    .local v4, "typeTree":Lcom/sun/source/tree/Tree;
    move-object v10, v4

    goto :goto_3

    .line 689
    .end local v4    # "typeTree":Lcom/sun/source/tree/Tree;
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v5, "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    :cond_5
    move-object/from16 v18, v5

    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    move-object v4, v10

    check-cast v4, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 691
    .end local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    .restart local v4    # "typeTree":Lcom/sun/source/tree/Tree;
    move-object v10, v4

    goto :goto_3

    .line 671
    .end local v16    # "dim":I
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v4, "dim":I
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    :pswitch_3
    move/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "dim":I
    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v16    # "dim":I
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    move-object v4, v10

    check-cast v4, Lcom/sun/source/tree/ArrayTypeTree;

    invoke-interface {v4}, Lcom/sun/source/tree/ArrayTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v4

    .line 672
    .end local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    .local v4, "typeTree":Lcom/sun/source/tree/Tree;
    move-object v10, v4

    goto :goto_3

    .line 674
    .end local v16    # "dim":I
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v4, "dim":I
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    :pswitch_4
    move/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "dim":I
    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v16    # "dim":I
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    instance-of v4, v10, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    if-eqz v4, :cond_8

    .line 675
    move-object v4, v10

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 676
    .local v4, "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    invoke-virtual {v4}, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    .line 678
    iget-object v5, v4, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v5

    move-object/from16 v17, v4

    .end local v4    # "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    .local v17, "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    sget-object v4, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    if-ne v5, v4, :cond_6

    move/from16 v4, v16

    move-object/from16 v5, v18

    goto :goto_2

    .line 695
    .end local v17    # "jfa":Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;
    :cond_6
    :goto_3
    nop

    .end local v15    # "entry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    add-int/lit8 v14, v14, 0x1

    .line 696
    move/from16 v4, v16

    move-object/from16 v5, v18

    goto/16 :goto_2

    .line 664
    .end local v16    # "dim":I
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v4, "dim":I
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :cond_7
    move/from16 v16, v4

    move-object/from16 v18, v5

    .line 697
    .end local v4    # "dim":I
    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v16    # "dim":I
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :cond_8
    :goto_4
    if-ge v14, v12, :cond_9

    .line 700
    invoke-direct {v0, v3}, Lannotator/find/TreeFinder$TypePositionFinder;->getBaseTypePosition(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v4

    return-object v4

    .line 702
    :cond_9
    invoke-interface {v10, v0, v2}, Lcom/sun/source/tree/Tree;->accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/plumelib/util/Pair;

    return-object v4

    .line 657
    .end local v10    # "typeTree":Lcom/sun/source/tree/Tree;
    .end local v14    # "j":I
    .end local v16    # "dim":I
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v4    # "dim":I
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :cond_a
    move-object/from16 v18, v5

    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 705
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    :cond_b
    move-object/from16 v18, v5

    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    invoke-virtual {v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getChildSelector()Ljava/lang/String;

    move-result-object v8

    .line 706
    if-lez v4, :cond_e

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 708
    invoke-static {}, Lscenelib/annotations/io/ASTPath;->empty()Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    .line 709
    .local v5, "newPath":Lscenelib/annotations/io/ASTPath;
    const/4 v14, 0x0

    .line 710
    .restart local v14    # "j":I
    invoke-virtual {v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v15

    add-int/2addr v4, v15

    .line 711
    :goto_5
    if-ge v14, v13, :cond_c

    .line 712
    invoke-virtual {v7, v14}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v5, v15}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    .line 713
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 715
    :cond_c
    new-instance v15, Lscenelib/annotations/io/ASTPath$ASTEntry;

    move-object/from16 v16, v8

    .end local v8    # "childSelector":Ljava/lang/String;
    .local v16, "childSelector":Ljava/lang/String;
    sget-object v8, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    .line 716
    move/from16 v17, v13

    .end local v13    # "i":I
    .local v17, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v15, v8, v10, v13}, Lscenelib/annotations/io/ASTPath$ASTEntry;-><init>(Lcom/sun/source/tree/Tree$Kind;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v8, v15

    .line 717
    .end local v11    # "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .local v8, "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    invoke-virtual {v5, v8}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    .line 718
    :goto_6
    if-ge v14, v12, :cond_d

    .line 719
    invoke-virtual {v7, v14}, Lscenelib/annotations/io/ASTPath;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lscenelib/annotations/io/ASTPath$ASTEntry;

    invoke-virtual {v5, v11}, Lscenelib/annotations/io/ASTPath;->extend(Lscenelib/annotations/io/ASTPath$ASTEntry;)Lscenelib/annotations/io/ASTPath;

    move-result-object v5

    .line 720
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 722
    :cond_d
    move-object v7, v5

    .line 723
    .end local v5    # "newPath":Lscenelib/annotations/io/ASTPath;
    .end local v14    # "j":I
    move-object/from16 v8, v16

    goto :goto_7

    .line 706
    .end local v16    # "childSelector":Ljava/lang/String;
    .end local v17    # "i":I
    .local v8, "childSelector":Ljava/lang/String;
    .restart local v11    # "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v13    # "i":I
    :cond_e
    move-object/from16 v16, v8

    move/from16 v17, v13

    .line 724
    .end local v8    # "childSelector":Ljava/lang/String;
    .end local v13    # "i":I
    .restart local v16    # "childSelector":Ljava/lang/String;
    .restart local v17    # "i":I
    invoke-virtual {v11}, Lscenelib/annotations/io/ASTPath$ASTEntry;->getArgument()I

    move-result v4

    move-object/from16 v8, v16

    .line 728
    .end local v11    # "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .end local v12    # "n":I
    .end local v16    # "childSelector":Ljava/lang/String;
    .end local v17    # "i":I
    .restart local v8    # "childSelector":Ljava/lang/String;
    :goto_7
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_1b

    .line 729
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v11, "{"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v11, " has no explicit type; skipping insertion "

    const-string v12, "WARNING: array initializer "

    if-eqz v5, :cond_11

    .line 730
    invoke-virtual/range {p2 .. p2}, Lannotator/find/Insertion;->getKind()Lannotator/find/Insertion$Kind;

    move-result-object v5

    sget-object v13, Lannotator/find/Insertion$Kind;->ANNOTATION:Lannotator/find/Insertion$Kind;

    if-ne v5, v13, :cond_10

    .line 731
    iget-object v5, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v5}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sun/source/util/TreePath;->getPath(Lcom/sun/source/tree/CompilationUnitTree;Lcom/sun/source/tree/Tree;)Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    .line 732
    .local v5, "parentPath":Lcom/sun/source/util/TreePath;
    if-eqz v5, :cond_f

    .line 733
    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v13

    .line 734
    .local v13, "parent":Lcom/sun/source/tree/Tree;
    invoke-interface {v13}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v14

    sget-object v15, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v14, v15, :cond_f

    .line 735
    move-object v10, v2

    check-cast v10, Lannotator/find/AnnotationInsertion;

    .line 736
    .local v10, "ai":Lannotator/find/AnnotationInsertion;
    move-object v11, v13

    check-cast v11, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {v11}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v11

    .line 737
    .local v11, "typeTree":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {v11}, Lcom/sun/tools/javac/tree/JCTree;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lannotator/find/AnnotationInsertion;->setType(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v12

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getStartPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12, v14}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v12

    return-object v12

    .line 741
    .end local v10    # "ai":Lannotator/find/AnnotationInsertion;
    .end local v11    # "typeTree":Lcom/sun/tools/javac/tree/JCTree;
    .end local v13    # "parent":Lcom/sun/source/tree/Tree;
    :cond_f
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 743
    return-object v10

    .line 745
    .end local v5    # "parentPath":Lcom/sun/source/util/TreePath;
    :cond_10
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getStartPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5

    .line 748
    :cond_11
    if-ne v4, v9, :cond_13

    .line 749
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v5, :cond_12

    .line 750
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    return-object v10

    .line 754
    :cond_12
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {v0, v5}, Lannotator/find/TreeFinder$TypePositionFinder;->getBaseTypePosition(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5

    .line 756
    :cond_13
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v5

    const/16 v10, 0x5b

    if-eqz v5, :cond_14

    .line 757
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getStartPosition()I

    move-result v5

    .line 758
    .local v5, "startPos":I
    iget-object v11, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v11}, Lannotator/find/TreeFinder;->access$100(Lannotator/find/TreeFinder;)Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v11

    iget-object v11, v11, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lcom/sun/tools/javac/tree/EndPosTable;

    invoke-virtual {v3, v11}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getEndPosition(Lcom/sun/tools/javac/tree/EndPosTable;)I

    move-result v11

    .line 759
    .local v11, "endPos":I
    iget-object v12, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    add-int/lit8 v13, v4, 0x1

    invoke-static {v12, v10, v5, v11, v13}, Lannotator/find/TreeFinder;->access$500(Lannotator/find/TreeFinder;CIII)I

    move-result v10

    .line 760
    .local v10, "pos":I
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v12

    return-object v12

    .line 765
    .end local v5    # "startPos":I
    .end local v10    # "pos":I
    .end local v11    # "endPos":I
    :cond_14
    if-nez v4, :cond_16

    .line 766
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v5, :cond_15

    .line 767
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getStartPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5

    .line 772
    :cond_15
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v5

    .line 773
    .restart local v5    # "startPos":I
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v11

    iget-object v12, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    add-int/lit8 v13, v5, 0x1

    .line 774
    invoke-static {v12, v10, v13}, Lannotator/find/TreeFinder;->access$200(Lannotator/find/TreeFinder;CI)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 773
    invoke-static {v11, v10}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v10

    return-object v10

    .line 775
    .end local v5    # "startPos":I
    :cond_16
    if-ne v4, v9, :cond_17

    .line 776
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v5

    .line 777
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getType()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 776
    invoke-static {v5, v10}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5

    .line 779
    :cond_17
    iget-object v5, v3, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 780
    .local v5, "jcatt":Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_8
    if-ge v10, v4, :cond_1a

    .line 781
    iget-object v11, v5, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 782
    .local v11, "elem":Lcom/sun/tools/javac/tree/JCTree;
    sget-object v12, Lcom/sun/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lcom/sun/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v11, v12}, Lcom/sun/tools/javac/tree/JCTree;->hasTag(Lcom/sun/tools/javac/tree/JCTree$Tag;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 783
    move-object v12, v11

    check-cast v12, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v11, v12, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 785
    :cond_18
    sget-object v12, Lcom/sun/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lcom/sun/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v11, v12}, Lcom/sun/tools/javac/tree/JCTree;->hasTag(Lcom/sun/tools/javac/tree/JCTree$Tag;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 786
    move-object v5, v11

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    .line 780
    .end local v11    # "elem":Lcom/sun/tools/javac/tree/JCTree;
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 785
    .restart local v11    # "elem":Lcom/sun/tools/javac/tree/JCTree;
    :cond_19
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 788
    .end local v10    # "i":I
    .end local v11    # "elem":Lcom/sun/tools/javac/tree/JCTree;
    :cond_1a
    invoke-virtual {v6, v7}, Lscenelib/annotations/io/ASTRecord;->replacePath(Lscenelib/annotations/io/ASTPath;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v10

    .line 789
    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->pos()Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v11

    invoke-interface {v11}, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 788
    invoke-static {v10, v11}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v10

    return-object v10

    .line 791
    .end local v5    # "jcatt":Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;
    :cond_1b
    const-string v5, "dimension"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 792
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getInitializers()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    .line 793
    .local v5, "inits":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1c

    .line 794
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 795
    .local v10, "expr":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v11, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v11, v10}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v11

    invoke-virtual {v10}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v11

    return-object v11

    .line 797
    .end local v10    # "expr":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_1c
    return-object v10

    .line 798
    .end local v5    # "inits":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/tree/JCTree$JCExpression;>;"
    :cond_1d
    const-string v5, "initializer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 799
    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->getDimensions()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 800
    .local v5, "expr":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    iget-object v10, v0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v10, v5}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getStartPosition()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v10

    return-object v10

    .line 802
    .end local v5    # "expr":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_1e
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected child selector in AST path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v8, :cond_1f

    const-string v11, "null"

    goto :goto_9

    :cond_1f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 654
    .end local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v5, "galc":Lannotator/find/GenericArrayLocationCriterion;
    .local v11, "lastEntry":Lscenelib/annotations/io/ASTPath$ASTEntry;
    .restart local v12    # "n":I
    .local v13, "i":I
    :cond_20
    move-object/from16 v18, v5

    .end local v5    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    .restart local v18    # "galc":Lannotator/find/GenericArrayLocationCriterion;
    new-instance v5, Ljava/lang/AssertionError;

    const-string v10, "no matching path entry (kind=NEW_ARRAY)"

    invoke-direct {v5, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewClassTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 810
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 811
    .local v0, "na":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 813
    .local v1, "className":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_3

    .line 814
    instance-of v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    if-eqz v2, :cond_0

    .line 815
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 816
    :cond_0
    instance-of v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    if-eqz v2, :cond_1

    .line 817
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 818
    :cond_1
    instance-of v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    if-eqz v2, :cond_2

    .line 822
    move-object v2, v1

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    .line 824
    :cond_2
    new-instance v2, Ljava/lang/Error;

    .line 825
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3, v1, p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 824
    const-string v4, "unrecognized JCNewClass.clazz (%s): %s%n   surrounding new class tree: %s%n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/IdentifierTree;

    invoke-virtual {p0, v2, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/ParameterizedTypeTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v0, p1}, Lannotator/find/TreeFinder;->access$400(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 450
    .local v0, "parent":Lcom/sun/source/tree/Tree;
    sget-object v1, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v2, "TypePositionFinder.visitParameterizedType %s parent=%s%n"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-direct {p0, v1}, Lannotator/find/TreeFinder$TypePositionFinder;->getBaseTypePosition(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/org/plumelib/util/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 453
    .local v1, "pos":Ljava/lang/Integer;
    iget-object v2, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v2, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/PrimitiveTypeTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/PrimitiveTypeTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 443
    sget-object v0, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    const-string v1, "TypePositionFinder.visitPrimitiveType(%s)%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-direct {p0, v0}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/TypeParameterTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeParameterTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 431
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    .line 432
    .local v0, "tp":Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v1, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->getStartPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitVariable(Lcom/sun/source/tree/VariableTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitVariable(Lcom/sun/source/tree/VariableTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Lcom/sun/source/tree/VariableTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/VariableTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/VariableTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-interface {p1}, Lcom/sun/source/tree/VariableTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 325
    .local v0, "name":Ljavax/lang/model/element/Name;
    move-object v1, p1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 326
    .local v1, "jn":Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;
    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getType()Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v2

    .line 327
    .local v2, "jt":Lcom/sun/tools/javac/tree/JCTree;
    invoke-virtual {p2}, Lannotator/find/Insertion;->getCriteria()Lannotator/find/Criteria;

    move-result-object v3

    .line 328
    .local v3, "criteria":Lannotator/find/Criteria;
    sget-object v4, Lannotator/find/TreeFinder;->dbug:Lscenelib/annotations/io/DebugWriter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "TypePositionFinder.visitVariable: %s %s%n"

    invoke-virtual {v4, v6, v5}, Lscenelib/annotations/io/DebugWriter;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lannotator/find/Criteria;->isOnFieldDeclaration()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    iget-object v4, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v4, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->getStartPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v4

    return-object v4

    .line 332
    :cond_0
    instance-of v4, v2, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    if-eqz v4, :cond_1

    .line 333
    move-object v4, v2

    check-cast v4, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v4, v4, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 334
    .local v4, "type":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    invoke-direct {p0, v4}, Lannotator/find/TreeFinder$TypePositionFinder;->pathAndPos(Lcom/sun/tools/javac/tree/JCTree;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v5

    return-object v5

    .line 336
    .end local v4    # "type":Lcom/sun/tools/javac/tree/JCTree$JCExpression;
    :cond_1
    iget-object v4, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v4, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v4

    iget v5, v1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p2, Lannotator/find/Insertion;

    invoke-virtual {p0, p1, p2}, Lannotator/find/TreeFinder$TypePositionFinder;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Lannotator/find/Insertion;)Lorg/checkerframework/org/plumelib/util/Pair;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "ins"    # Lannotator/find/Insertion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/WildcardTree;",
            "Lannotator/find/Insertion;",
            ")",
            "Lorg/checkerframework/org/plumelib/util/Pair<",
            "Lscenelib/annotations/io/ASTRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 437
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;

    .line 438
    .local v0, "wc":Lcom/sun/tools/javac/tree/JCTree$JCWildcard;
    iget-object v1, p0, Lannotator/find/TreeFinder$TypePositionFinder;->this$0:Lannotator/find/TreeFinder;

    invoke-static {v1, p1}, Lannotator/find/TreeFinder;->access$000(Lannotator/find/TreeFinder;Lcom/sun/source/tree/Tree;)Lscenelib/annotations/io/ASTRecord;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->getStartPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/org/plumelib/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/org/plumelib/util/Pair;

    move-result-object v1

    return-object v1
.end method
