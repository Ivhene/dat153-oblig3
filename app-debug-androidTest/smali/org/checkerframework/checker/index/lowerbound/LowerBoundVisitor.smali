.class public Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "LowerBoundVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final FROM_NOT_NN:Ljava/lang/String; = "from.not.nonnegative"

.field private static final LOWER_BOUND:Ljava/lang/String; = "array.access.unsafe.low"

.field private static final NEGATIVE_ARRAY:Ljava/lang/String; = "array.length.negative"


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 33
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 6
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueTree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    invoke-static {p1, v0}, Lorg/checkerframework/checker/index/Subsequence;->getSubsequenceFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/checker/index/Subsequence;

    move-result-object v0

    .line 72
    .local v0, "subSeq":Lorg/checkerframework/checker/index/Subsequence;
    if-eqz v0, :cond_2

    .line 75
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    iget-object v2, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v2, p1, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotationMirrorFromJavaExpressionString(Ljava/lang/String;Lcom/sun/source/tree/Tree;Lcom/sun/source/util/TreePath;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1
    :try_end_0
    .catch Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 78
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 81
    .local v1, "anm":Ljavax/lang/model/element/AnnotationMirror;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/NonNegative;

    .line 82
    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    .line 83
    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/checkerframework/checker/index/Subsequence;->from:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 86
    if-nez v1, :cond_1

    const-string v4, "@LowerBoundUnknown"

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 85
    const-string v4, "from.not.nonnegative"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 91
    .end local v1    # "anm":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "type"    # Ljava/lang/Void;

    .line 38
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getIndex()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 39
    .local v0, "index":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "arrName":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 41
    .local v2, "indexType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v3, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    .line 42
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "array.access.unsafe.low"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Ljava/lang/Void;

    .line 51
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    .line 53
    .local v1, "dim":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;

    invoke-virtual {v2, v1}, Lorg/checkerframework/checker/index/lowerbound/LowerBoundAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 54
    .local v2, "dimType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v3, Lorg/checkerframework/checker/index/qual/NonNegative;

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lorg/checkerframework/checker/index/qual/Positive;

    .line 55
    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget-object v3, p0, Lorg/checkerframework/checker/index/lowerbound/LowerBoundVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "array.length.negative"

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 58
    .end local v1    # "dim":Lcom/sun/source/tree/ExpressionTree;
    .end local v2    # "dimType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
