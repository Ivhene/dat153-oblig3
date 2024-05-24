.class public Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;
.super Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.source "PropagationTreeAnnotator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 1
    .param p1, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 39
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 40
    return-void
.end method

.method private hasPrimaryAnnotationInAllHierarchies(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 199
    const/4 v0, 0x1

    .line 200
    .local v0, "annotated":Z
    iget-object v1, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/QualifierHierarchy;->getTopAnnotations()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 201
    .local v2, "top":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    if-nez v3, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    .end local v2    # "top":Ljavax/lang/model/element/AnnotationMirror;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    return v0
.end method


# virtual methods
.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 132
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->hasPrimaryAnnotationInAllHierarchies(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    return-object v1

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 141
    .local v0, "a":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 142
    .local v2, "b":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 144
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v5

    .line 143
    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 145
    .local v3, "lubs":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 146
    return-object v1
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 6
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 116
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->hasPrimaryAnnotationInAllHierarchies(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 122
    .local v0, "rhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 123
    .local v2, "lhs":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 125
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v4, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v3

    .line 126
    .local v3, "lubs":Ljava/util/Set;, "Ljava/util/Set<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 127
    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 9
    .param p1, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 44
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_9

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 50
    .local v0, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v1, 0x0

    .line 51
    .local v1, "prev":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 56
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/ExpressionTree;

    .line 57
    .local v3, "init":Lcom/sun/source/tree/ExpressionTree;
    iget-object v4, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 59
    .local v4, "initType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v5

    .line 61
    .local v5, "annos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/lang/model/element/AnnotationMirror;>;"
    if-nez v1, :cond_0

    move-object v6, v5

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v6, v1, v5}, Lorg/checkerframework/framework/type/QualifierHierarchy;->leastUpperBounds(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v6

    :goto_1
    move-object v1, v6

    .line 62
    .end local v3    # "init":Lcom/sun/source/tree/ExpressionTree;
    .end local v4    # "initType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v5    # "annos":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 67
    :goto_2
    if-eqz v1, :cond_8

    .line 70
    iget-object v2, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 71
    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getVisitorState()Lorg/checkerframework/framework/type/VisitorState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 74
    .local v2, "context":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    if-eqz v2, :cond_7

    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    instance-of v3, v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v3, :cond_7

    .line 77
    iget-object v3, v2, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 78
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 83
    .local v3, "contextComponentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v4, 0x1

    .line 84
    .local v4, "prevIsSubtype":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/AnnotationMirror;

    .line 85
    .local v6, "am":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->isAnnotatedInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->qualHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 87
    invoke-virtual {v3, v6}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotationInHierarchy(Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    .line 86
    invoke-virtual {v7, v6, v8}, Lorg/checkerframework/framework/type/QualifierHierarchy;->isSubtype(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 88
    const/4 v4, 0x0

    .line 90
    .end local v6    # "am":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v6

    if-ne v5, v6, :cond_6

    .line 94
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 95
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v4, :cond_6

    .line 97
    :cond_5
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v5

    .local v5, "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    goto :goto_4

    .line 101
    .end local v5    # "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_6
    move-object v5, v1

    .line 103
    .end local v3    # "contextComponentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v4    # "prevIsSubtype":Z
    .restart local v5    # "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_4
    goto :goto_5

    .line 105
    .end local v5    # "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_7
    move-object v5, v1

    .line 109
    .restart local v5    # "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :goto_5
    invoke-virtual {v0, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 111
    const/4 v3, 0x0

    return-object v3

    .line 67
    .end local v2    # "context":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local v5    # "post":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "PropagationTreeAnnotator.visitNewArray: violated assumption about qualifiers"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 44
    .end local v0    # "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v1    # "prev":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/lang/model/element/AnnotationMirror;>;"
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PropagationTreeAnnotator.visitNewArray: should be an array type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 177
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->hasPrimaryAnnotationInAllHierarchies(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    return-object v1

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 184
    .local v0, "exprType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    .line 185
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_2

    .line 187
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 195
    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 151
    invoke-direct {p0, p2}, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->hasPrimaryAnnotationInAllHierarchies(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    return-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/type/treeannotator/PropagationTreeAnnotator;->atypeFactory:Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 158
    .local v0, "exp":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 159
    return-object v1
.end method
