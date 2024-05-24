.class public Lorg/checkerframework/checker/index/inequality/LessThanVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "LessThanVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final FROM_GT_TO:Ljava/lang/String; = "from.gt.to"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 23
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 6
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/index/Subsequence;->getSubsequenceFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v0

    .line 34
    .local v0, "subSeq":Lorg/checkerframework/checker/index/Subsequence;
    if-eqz v0, :cond_2

    .line 37
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    iget-object v2, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, p1, v3}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getAnnotationMirrorFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 40
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 44
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanOrEqual(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 51
    if-nez v1, :cond_1

    const-string v4, "@LessThanUnknown"

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->to:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 47
    const-string v4, "from.gt.to"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 58
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 8
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 73
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 75
    const/4 v1, 0x1

    .line 76
    .local v1, "isLessThan":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "expression":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    invoke-virtual {p0}, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v4, p3, v3, v5}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->isLessThanByValue(Lcom/sun/source/tree/Tree;Ljava/lang/String;Lcom/sun/source/util/TreePath;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    .end local v3    # "expression":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 82
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .restart local v3    # "expression":Ljava/lang/String;
    const-string v4, " + 1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "value":Ljava/lang/String;
    invoke-interface {p3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_2

    .line 86
    move-object v4, p3

    check-cast v4, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v4}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    const/4 v1, 0x1

    .line 94
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "expression":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->commonAssignmentCheckStartDiagnostic(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 97
    const/4 v3, 0x1

    const-string v4, "isLessThan"

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->commonAssignmentCheckEndDiagnostic(ZLjava/lang/String;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 100
    return-void

    .line 103
    .end local v1    # "isLessThan":Z
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 7
    .param p1, "castType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "exprType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 109
    iget-object v0, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->UNKNOWN:Ljavax/lang/model/element/AnnotationMirror;

    .line 110
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 112
    .local v0, "exprLTAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v0, :cond_1

    .line 113
    nop

    .line 114
    invoke-static {v0}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->getLessThanExpressions(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "initialAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v2, "updatedAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, "annotation":Ljava/lang/String;
    nop

    .line 121
    invoke-static {v4}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->createOffsetFromJavaExpression(Ljava/lang/String;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v5

    .line 122
    .local v5, "updatedAnnotation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    invoke-virtual {v5}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v4    # "annotation":Ljava/lang/String;
    .end local v5    # "updatedAnnotation":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    goto :goto_0

    .line 125
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/checker/index/inequality/LessThanVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;

    .line 126
    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/index/inequality/LessThanAnnotatedTypeFactory;->createLessThanQualifier(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    .line 125
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 130
    .end local v1    # "initialAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "updatedAnnotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->isTypeCastSafe(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v1

    return v1
.end method
