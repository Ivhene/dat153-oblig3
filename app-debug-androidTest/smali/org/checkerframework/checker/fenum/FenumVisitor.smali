.class public Lorg/checkerframework/checker/fenum/FenumVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "FenumVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 24
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected checkConstructorInvocation(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/NewClassTree;)V
    .locals 0
    .param p1, "dt"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "constructor"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p3, "src"    # Lcom/sun/source/tree/NewClassTree;

    .line 68
    return-void
.end method

.method protected checkConstructorResult(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0
    .param p1, "constructorType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "constructorElement"    # Ljavax/lang/model/element/ExecutableElement;

    .line 74
    return-void
.end method

.method protected getExceptionParameterLowerBoundAnnotations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->FENUM_UNQUALIFIED:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/fenum/FenumVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 29
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 35
    .local v0, "lhsAtm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 37
    .local v1, "rhsAtm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 38
    .local v2, "lhs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 39
    .local v3, "rhs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    iget-object v4, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v4, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    invoke-virtual {v4}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v4

    .line 40
    .local v4, "qualHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 41
    iget-object v5, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v6, "binary.type.incompatible"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 44
    .end local v0    # "lhsAtm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "rhsAtm":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "lhs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v3    # "rhs":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v4    # "qualHierarchy":Lorg/checkerframework/framework/type/QualifierHierarchy;
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/fenum/FenumVisitor;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/SwitchTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 49
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 50
    .local v0, "expr":Lcom/sun/source/tree/ExpressionTree;
    iget-object v1, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 52
    .local v1, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getCases()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/CaseTree;

    .line 53
    .local v3, "caseExpr":Lcom/sun/source/tree/CaseTree;
    invoke-interface {v3}, Lcom/sun/source/tree/CaseTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 54
    .local v4, "realCaseExpr":Lcom/sun/source/tree/ExpressionTree;
    if-eqz v4, :cond_0

    .line 55
    iget-object v5, p0, Lorg/checkerframework/checker/fenum/FenumVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;

    invoke-virtual {v5, v4}, Lorg/checkerframework/checker/fenum/FenumAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v5

    .line 57
    .local v5, "caseType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-string v6, "switch.type.incompatible"

    invoke-virtual {p0, v1, v5, v3, v6}, Lorg/checkerframework/checker/fenum/FenumVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 60
    .end local v3    # "caseExpr":Lcom/sun/source/tree/CaseTree;
    .end local v4    # "realCaseExpr":Lcom/sun/source/tree/ExpressionTree;
    .end local v5    # "caseType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_0
    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method
