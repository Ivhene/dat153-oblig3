.class public Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "UpperBoundVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final HSS:Ljava/lang/String; = "which.subsequence"

.field private static final NOT_FINAL:Ljava/lang/String; = "not.final"

.field private static final TO_NOT_LTEL:Ljava/lang/String; = "to.not.ltel"

.field private static final UPPER_BOUND:Ljava/lang/String; = "array.access.unsafe.high"

.field private static final UPPER_BOUND_CONST:Ljava/lang/String; = "array.access.unsafe.high.constant"

.field private static final UPPER_BOUND_RANGE:Ljava/lang/String; = "array.access.unsafe.high.range"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 56
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 57
    return-void
.end method

.method private checkEffectivelyFinalAndParsable(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/tree/Tree;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .param p3, "error"    # Lcom/sun/source/tree/Tree;

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil;->parse(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/util/TreePath;Z)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    nop

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "element":Ljavax/lang/model/element/Element;
    instance-of v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    if-eqz v2, :cond_0

    .line 133
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$LocalVariable;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_0
    instance-of v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    if-eqz v2, :cond_1

    .line 135
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions$FieldAccess;->getField()Ljavax/lang/model/element/VariableElement;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_1
    instance-of v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ThisReference;

    if-nez v2, :cond_5

    instance-of v2, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$ValueLiteral;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isEffectivelyFinal(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "not.final"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 142
    :cond_4
    return-void

    .line 137
    :cond_5
    :goto_1
    return-void

    .line 127
    .end local v0    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private checkMinLen(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 6
    .param p1, "indexTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "arrTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 374
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 375
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMinLen(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)I

    move-result v0

    .line 376
    .local v0, "minLen":I
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 378
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v1

    .line 377
    invoke-static {p1, v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMaxValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v1

    .line 379
    .local v1, "valMax":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method static getReceiverAndOffsetFromJavaExpressionString(Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "atypeFactory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p2, "currentPath"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    invoke-static {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getExpressionAndOffset(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 336
    .local v0, "p":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v1

    .line 337
    .local v1, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-nez v1, :cond_0

    .line 338
    const/4 v2, 0x0

    return-object v2

    .line 340
    :cond_0
    iget-object v2, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getReceiverFromJavaExpressionString(Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "atypeFactory"    # Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;
    .param p2, "currentPath"    # Lcom/sun/source/util/TreePath;

    .line 354
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    goto :goto_0

    .line 355
    .end local v0    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 358
    .local v0, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :goto_0
    return-object v0
.end method

.method private negateString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "context"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    .line 366
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/checkerframework/checker/index/Subsequence;->negateString(Ljava/lang/String;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processSubsequenceForLHS(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .locals 10
    .param p1, "varLtlQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "expQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    .line 469
    move-object v0, p1

    .line 470
    .local v0, "newLHS":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->getSequences()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 472
    .local v2, "lhsSeq":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->hasSequenceWithOffset(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 475
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getReceiverFromJavaExpressionString(Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 476
    .local v4, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-static {v4, v5}, Lorg/checkerframework/checker/index/Subsequence;->getContextFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v5

    .line 477
    .local v5, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    .line 479
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    .line 478
    invoke-static {v4, v6, v7, v5}, Lorg/checkerframework/checker/index/Subsequence;->getSubsequenceFromReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lcom/sun/source/util/TreePath;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v6

    .line 481
    .local v6, "subSeq":Lorg/checkerframework/checker/index/Subsequence;
    if-eqz v6, :cond_0

    .line 482
    iget-object v7, v6, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    .line 483
    .local v7, "from":Ljava/lang/String;
    iget-object v8, v6, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    .line 485
    .local v8, "a":Ljava/lang/String;
    invoke-direct {p0, v7, v5}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->negateString(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->hasSequenceWithOffset(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 489
    move-object v9, v0

    check-cast v9, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-virtual {v9, v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->removeOffset(Ljava/lang/String;I)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 493
    .end local v2    # "lhsSeq":Ljava/lang/String;
    .end local v4    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    .end local v6    # "subSeq":Lorg/checkerframework/checker/index/Subsequence;
    .end local v7    # "from":Ljava/lang/String;
    .end local v8    # "a":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 494
    :cond_1
    return-object v0
.end method

.method private relaxedCommonAssignment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 8
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;

    .line 297
    invoke-interface {p2}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NEW_ARRAY:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_5

    .line 298
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/NewArrayTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v0

    .line 299
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 304
    .local v1, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 305
    invoke-static {v1, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 306
    .local v4, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v5

    if-nez v5, :cond_1

    .line 307
    return v3

    .line 309
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/ExpressionTree;

    .line 310
    .local v6, "expressionTree":Lcom/sun/source/tree/ExpressionTree;
    move-object v7, v4

    check-cast v7, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-direct {p0, v7, v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->relaxedCommonAssignmentCheck(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 311
    return v3

    .line 313
    .end local v6    # "expressionTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_2
    goto :goto_0

    .line 314
    :cond_3
    return v2

    .line 300
    .end local v1    # "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_4
    :goto_1
    return v3

    .line 317
    .end local v0    # "expressions":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v0

    .line 318
    .local v0, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 319
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->relaxedCommonAssignmentCheck(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    .line 318
    :goto_2
    return v2
.end method

.method private relaxedCommonAssignmentCheck(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 20
    .param p1, "varLtlQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 394
    .local v3, "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v4, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v3, v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 396
    .local v4, "expQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v5, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->fromLessThan(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v5

    .line 397
    .local v5, "lessThanQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    if-eqz v5, :cond_0

    .line 398
    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 401
    :cond_0
    iget-object v6, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->fromLessThanOrEqual(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/util/TreePath;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v6

    .line 403
    .local v6, "lessThanOrEqualQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    if-eqz v6, :cond_1

    .line 404
    invoke-virtual {v4, v6}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->glb(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 406
    :cond_1
    invoke-virtual {v4, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isSubtype(Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 407
    return v8

    .line 416
    :cond_2
    invoke-direct {v0, v1, v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->processSubsequenceForLHS(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lorg/checkerframework/checker/index/upperbound/UBQualifier;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v7

    .line 417
    .local v7, "newLHS":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    invoke-virtual {v7}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 418
    return v8

    .line 420
    :cond_3
    move-object v1, v7

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 423
    .end local p1    # "varLtlQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .local v1, "varLtlQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    iget-object v9, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v9, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 425
    invoke-virtual {v9}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v9

    .line 424
    invoke-static {v2, v9}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMaxValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v9

    .line 427
    .local v9, "value":Ljava/lang/Long;
    const/4 v10, 0x0

    if-nez v9, :cond_4

    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v11

    if-nez v11, :cond_4

    .line 428
    return v10

    .line 431
    :cond_4
    iget-object v11, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v11, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v11}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getSameLenAnnotatedTypeFactory()Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    move-result-object v11

    .line 432
    .local v11, "sameLenFactory":Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;
    iget-object v12, v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v12, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    .line 433
    invoke-virtual {v12}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v12

    .line 435
    .local v12, "valueAnnotatedTypeFactory":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    invoke-virtual {v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->getSequences()Ljava/lang/Iterable;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 437
    .local v14, "sequenceName":Ljava/lang/String;
    nop

    .line 438
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v15

    invoke-virtual {v11, v14, v2, v15}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->getSameLensFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljava/util/List;

    move-result-object v15

    .line 439
    .local v15, "sameLenSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v4, v1, v15, v14}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->testSameLen(Lorg/checkerframework/checker/index/upperbound/UBQualifier;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 440
    goto :goto_0

    .line 443
    :cond_5
    nop

    .line 445
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v8

    .line 444
    invoke-virtual {v12, v14, v2, v8}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v8

    .line 446
    .local v8, "minlen":I
    invoke-direct {v0, v9, v8, v14, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->testMinLen(Ljava/lang/Long;ILjava/lang/String;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 447
    const/4 v8, 0x1

    goto :goto_0

    .line 449
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Ljava/lang/String;

    .line 450
    .local v10, "sequence":Ljava/lang/String;
    nop

    .line 452
    move-object/from16 v18, v3

    .end local v3    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v18, "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 451
    invoke-virtual {v12, v10, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenFromString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)I

    move-result v3

    .line 453
    .local v3, "minlenSL":I
    invoke-direct {v0, v9, v3, v14, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->testMinLen(Ljava/lang/Long;ILjava/lang/String;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 454
    move-object/from16 v3, v18

    const/4 v8, 0x1

    const/4 v10, 0x0

    goto :goto_0

    .line 456
    .end local v3    # "minlenSL":I
    .end local v10    # "sequence":Ljava/lang/String;
    :cond_7
    move-object/from16 v3, v18

    const/4 v10, 0x0

    goto :goto_1

    .line 458
    .end local v18    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .local v3, "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_8
    move-object/from16 v18, v3

    .end local v3    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v18    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v3, 0x0

    return v3

    .line 461
    .end local v8    # "minlen":I
    .end local v14    # "sequenceName":Ljava/lang/String;
    .end local v15    # "sameLenSequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v3    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_9
    move-object/from16 v18, v3

    .end local v3    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v18    # "expType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v3, 0x1

    return v3
.end method

.method private testMinLen(Ljava/lang/Long;ILjava/lang/String;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;
    .param p2, "minLen"    # I
    .param p3, "arrayName"    # Ljava/lang/String;
    .param p4, "varQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 527
    if-nez p1, :cond_0

    .line 528
    const/4 v0, 0x0

    return v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, p3, v0, v1, p2}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isValuePlusOffsetLessThanMinLen(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method private testSameLen(Lorg/checkerframework/checker/index/upperbound/UBQualifier;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .param p1, "expQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .param p2, "varQual"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    .param p4, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier;",
            "Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 507
    .local p3, "sameLenArrays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanLengthQualifier()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 508
    return v1

    .line 511
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 514
    .local v2, "sameLenArrayName":Ljava/lang/String;
    move-object v3, p1

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    invoke-virtual {p2, p4, v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->isValidReplacement(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    const/4 v0, 0x1

    return v0

    .line 518
    .end local v2    # "sameLenArrayName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 519
    :cond_2
    return v1
.end method

.method private visitAccess(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)V
    .locals 13
    .param p1, "indexTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "arrTree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 151
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {v0, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "arrName":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 153
    .local v1, "lhsQual":Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;
    invoke-direct {p0, v1, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->relaxedCommonAssignmentCheck(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checkMinLen(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 163
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v2, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 164
    .local v2, "indexType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v3, v3, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v2, v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v3

    .line 165
    .local v3, "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getValueAnnotatedTypeFactory()Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    move-result-object v4

    .line 166
    .local v4, "valueFactory":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    invoke-static {p1, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getMaxValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v5

    .line 168
    .local v5, "valMax":Ljava/lang/Long;
    invoke-static {p1, v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;

    move-result-object v6

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1

    .line 170
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 174
    invoke-virtual {v4, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 176
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v9, v10, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 171
    const-string v8, "array.access.unsafe.high.constant"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 170
    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isUnknown()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v6, v9, v11

    if-eqz v6, :cond_2

    .line 180
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 183
    invoke-virtual {v4, p1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v9

    invoke-virtual {v9}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-virtual {v4, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v10

    .line 187
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v9, v10, v0, v0, v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 181
    const-string v8, "array.access.unsafe.high.range"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 180
    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v6, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 191
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7, v0, v0, v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "array.access.unsafe.high"

    invoke-static {v8, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v7

    .line 190
    invoke-virtual {v6, v7, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 154
    .end local v2    # "indexType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "qualifier":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    .end local v4    # "valueFactory":Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .end local v5    # "valMax":Ljava/lang/Long;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 11
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/index/Subsequence;->getSubsequenceFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v0

    .line 204
    .local v0, "subSeq":Lorg/checkerframework/checker/index/Subsequence;
    if-eqz v0, :cond_3

    .line 207
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    iget-object v2, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 208
    invoke-virtual {v1, v2, p1, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotationMirrorFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 210
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 214
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    const/4 v2, 0x1

    .line 215
    .local v2, "ltelCheckFailed":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 216
    invoke-static {v1}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->createUBQualifier(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;

    move-result-object v4

    .line 217
    .local v4, "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/checkerframework/checker/index/upperbound/UBQualifier;->isLessThanOrEqualTo(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v3

    move v2, v5

    .line 220
    .end local v4    # "qual":Lorg/checkerframework/checker/index/upperbound/UBQualifier;
    :cond_0
    if-eqz v2, :cond_2

    .line 222
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    aput-object v7, v5, v6

    iget-object v6, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 227
    if-nez v1, :cond_1

    const-string v3, "@UpperBoundUnknown"

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v3, 0x3

    iget-object v6, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x4

    iget-object v6, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x5

    iget-object v6, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    aput-object v6, v5, v3

    .line 223
    const-string v3, "to.not.ltel"

    invoke-static {v3, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 222
    invoke-virtual {v4, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_2

    .line 233
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    iget-object v4, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    iget-object v6, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    iget-object v7, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    iget-object v8, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    iget-object v9, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    iget-object v10, v0, Lorg/checkerframework/checker/index/Subsequence;->array:Ljava/lang/String;

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v4

    .line 234
    const-string v5, "which.subsequence"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v4, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 247
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "ltelCheckFailed":Z
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 7
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 256
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->commonAssignmentCheckStartDiagnostic(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 257
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->relaxedCommonAssignment(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const/4 v2, 0x1

    const-string v3, "relaxedCommonAssignment didn\'t override, now must call super"

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 264
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "showchecks"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const/4 v2, 0x1

    const-string v3, "relaxedCommonAssignment"

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 269
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 79
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 80
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v2, Lorg/checkerframework/checker/index/qual/LTLengthOf;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/sun/source/tree/AnnotationTree;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 85
    const-class v3, Ljava/lang/String;

    .line 86
    const-string v4, "value"

    invoke-static {v0, v4, v3, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Ljava/lang/String;

    .line 88
    const-string v5, "offset"

    invoke-static {v0, v5, v4, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    iget-object v4, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 91
    const-string v6, "different.length.sequences.offsets"

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 90
    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 96
    const/4 v4, 0x0

    return-object v4

    .line 99
    .end local v1    # "args":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/ExpressionTree;>;"
    .end local v2    # "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sequences":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/HasSubsequence;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/checker/index/upperbound/UpperBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "subsequence"

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "seq":Ljava/lang/String;
    const-string v3, "from"

    const-class v4, Ljava/lang/String;

    invoke-static {v0, v3, v4, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, "from":Ljava/lang/String;
    const-string v4, "to"

    const-class v5, Ljava/lang/String;

    invoke-static {v0, v4, v5, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, "to":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v4

    .line 109
    .local v4, "enclosingClass":Lcom/sun/source/tree/ClassTree;
    iget-object v5, p0, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 110
    invoke-static {v4, v5}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;->buildContextForClassDeclaration(Lcom/sun/source/tree/ClassTree;Lorg/checkerframework/framework/util/BaseContext;)Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;

    move-result-object v5

    .line 111
    .local v5, "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    invoke-direct {p0, v1, v5, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checkEffectivelyFinalAndParsable(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/tree/Tree;)V

    .line 112
    invoke-direct {p0, v3, v5, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checkEffectivelyFinalAndParsable(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/tree/Tree;)V

    .line 113
    invoke-direct {p0, v2, v5, p1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->checkEffectivelyFinalAndParsable(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;Lcom/sun/source/tree/Tree;)V

    goto :goto_0

    .line 99
    .end local v1    # "seq":Ljava/lang/String;
    .end local v2    # "to":Ljava/lang/String;
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "enclosingClass":Lcom/sun/source/tree/ClassTree;
    .end local v5    # "context":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionContext;
    :cond_1
    nop

    .line 115
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "type"    # Ljava/lang/Void;

    .line 70
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 71
    .local v0, "indexTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 72
    .local v1, "arrTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/index/upperbound/UpperBoundVisitor;->visitAccess(Lcom/sun/source/tree/ExpressionTree;Lcom/sun/source/tree/ExpressionTree;)V

    .line 73
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method
