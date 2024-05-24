.class public Lorg/checkerframework/checker/index/samelen/SameLenVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "SameLenVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


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
.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 5
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/index/IndexUtil;->isSequenceType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lorg/checkerframework/checker/index/qual/PolySameLen;

    .line 40
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/checkerframework/checker/index/qual/PolySameLen;

    .line 41
    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/checker/index/samelen/SameLenVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-object v1, p3

    check-cast v1, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v0, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 44
    .local v0, "rhs":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->mayAppearInSameLen(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "rhsExpr":Ljava/lang/String;
    const-class v2, Lorg/checkerframework/checker/index/qual/SameLen;

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 48
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v2, :cond_1

    .line 49
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .local v3, "exprs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_0

    .line 51
    .end local v3    # "exprs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/TreeSet;

    .line 53
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 54
    .restart local v3    # "exprs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/checker/index/samelen/SameLenVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/checker/index/samelen/SameLenAnnotatedTypeFactory;->createSameLen(Ljava/util/Collection;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 57
    .local v4, "newSameLen":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->replaceAnnotation(Ljavax/lang/model/element/AnnotationMirror;)V

    .line 60
    .end local v0    # "rhs":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v1    # "rhsExpr":Ljava/lang/String;
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "exprs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v4    # "newSameLen":Ljavax/lang/model/element/AnnotationMirror;
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 61
    return-void
.end method
