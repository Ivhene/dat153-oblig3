.class public Lorg/checkerframework/checker/units/UnitsVisitor;
.super Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.source "UnitsVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
        "Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 19
    invoke-direct {p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/units/UnitsVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 24
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 25
    .local v0, "var":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 26
    .local v1, "expr":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/units/UnitsVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 27
    .local v2, "varType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/units/UnitsVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 29
    .local v3, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    .line 31
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    const-string v6, "compound.assignment.type.incompatible"

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    const-class v5, Lorg/checkerframework/checker/units/qual/UnknownUnits;

    invoke-virtual {v3, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    if-nez v5, :cond_2

    .line 39
    iget-object v5, p0, Lorg/checkerframework/checker/units/UnitsVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    .line 40
    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 39
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/checker/units/UnitsVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v5, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;

    invoke-virtual {v5}, Lorg/checkerframework/checker/units/UnitsAnnotatedTypeFactory;->getTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;

    move-result-object v5

    invoke-interface {v5, v3, v2}, Lorg/checkerframework/framework/type/TypeHierarchy;->isSubtype(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 33
    iget-object v5, p0, Lorg/checkerframework/checker/units/UnitsVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    .line 34
    invoke-static {v6, v7}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v6

    .line 33
    invoke-virtual {v5, v6, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 44
    :cond_2
    :goto_1
    const/4 v5, 0x0

    return-object v5
.end method
