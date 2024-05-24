.class Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;
.super Lorg/checkerframework/framework/type/TypeFromTreeVisitor;
.source "TypeFromExpressionVisitor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 70
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/checkerframework/framework/type/TypeFromTreeVisitor;-><init>()V

    return-void
.end method

.method private annotateArrayAsArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 7
    .param p1, "result"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    .param p2, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p3, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 262
    invoke-interface {p2}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 263
    .local v0, "treeElem":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p2}, Lcom/sun/source/tree/NewArrayTree;->getInitializers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 264
    .local v1, "hasInit":Z
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-direct {p0, p1, v2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->descendBy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;I)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 266
    .local v2, "typeElem":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_2
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 267
    instance-of v3, v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-nez v3, :cond_3

    .line 268
    nop

    .line 275
    const/4 v3, 0x0

    .line 276
    .local v3, "idx":I
    move-object v4, p1

    .line 277
    .local v4, "level":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_3
    invoke-virtual {v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v5

    sget-object v6, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v5, v6, :cond_2

    .line 278
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 279
    .local v5, "array":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    add-int/lit8 v6, v3, 0x1

    .line 280
    .end local v3    # "idx":I
    .local v6, "idx":I
    invoke-static {p2, v3}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromArrayCreation(Lcom/sun/source/tree/NewArrayTree;I)Ljava/util/List;

    move-result-object v3

    .line 281
    .local v3, "annos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {v5, v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 282
    invoke-virtual {v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v4

    .line 283
    .end local v3    # "annos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v5    # "array":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    move v3, v6

    goto :goto_3

    .line 286
    .end local v6    # "idx":I
    .local v3, "idx":I
    :cond_2
    const/4 v5, -0x1

    invoke-static {p2, v5}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromArrayCreation(Lcom/sun/source/tree/NewArrayTree;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->addAnnotations(Ljava/lang/Iterable;)V

    .line 287
    return-void

    .line 270
    .end local v3    # "idx":I
    .end local v4    # "level":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    instance-of v3, v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v3, :cond_4

    .line 271
    move-object v3, v0

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 272
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    goto :goto_2

    .line 270
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private descendBy(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;I)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "depth"    # I

    .line 251
    move-object v0, p1

    .line 252
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :goto_0
    if-lez p2, :cond_0

    .line 253
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 254
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 256
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 100
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 221
    iget-object v0, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/VisitorState;->getAssignmentContext()Lorg/checkerframework/javacutil/Pair;

    move-result-object v0

    .line 224
    .local v0, "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    :try_start_0
    iget-object v1, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 226
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 227
    .local v1, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    if-eqz v2, :cond_0

    .line 228
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v3, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v3, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    .line 228
    return-object v2

    .line 227
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .end local p1    # "node":Lcom/sun/source/tree/ArrayAccessTree;
    .end local p2    # "f":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v1    # "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .restart local v0    # "preAssCtxt":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;>;"
    .restart local p1    # "node":Lcom/sun/source/tree/ArrayAccessTree;
    .restart local p2    # "f":Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    :catchall_0
    move-exception v1

    iget-object v2, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->visitorState:Lorg/checkerframework/framework/type/VisitorState;

    invoke-virtual {v2, v0}, Lorg/checkerframework/framework/type/VisitorState;->setAssignmentContext(Lorg/checkerframework/javacutil/Pair;)V

    throw v1
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ArrayTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 119
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssignment(Lcom/sun/source/tree/AssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitAssignment(Lcom/sun/source/tree/AssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitAssignment(Lcom/sun/source/tree/AssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/AssignmentTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 150
    invoke-interface {p1}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 74
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 80
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 160
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 162
    .local v0, "alub":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getTrueExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 163
    .local v1, "trueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getFalseExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 165
    .local v2, "falseType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {p2, v1, v2, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->leastUpperBound(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 170
    invoke-interface {p1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "this"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "super"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 176
    .local v0, "elt":Ljavax/lang/model/element/Element;
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getImplicitReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 177
    .local v1, "selfType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    if-eqz v1, :cond_1

    .line 178
    iget-object v2, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-static {v2, p2, v1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 181
    :cond_1
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    .line 171
    .end local v0    # "elt":Ljavax/lang/model/element/Element;
    .end local v1    # "selfType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getSelfType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 172
    .local v0, "res":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    return-object v0
.end method

.method public bridge synthetic visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitInstanceOf(Lcom/sun/source/tree/InstanceOfTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/InstanceOfTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 85
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitIntersectionType(Lcom/sun/source/tree/IntersectionTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/IntersectionTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 131
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitLambdaExpression(Lcom/sun/source/tree/LambdaExpressionTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/LambdaExpressionTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 143
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitLiteral(Lcom/sun/source/tree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lcom/sun/source/tree/LiteralTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/LiteralTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 90
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lcom/sun/source/tree/MemberReferenceTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MemberReferenceTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 137
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->toAnnotatedType(Ljavax/lang/model/type/TypeMirror;Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 186
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 188
    .local v0, "elt":Ljavax/lang/model/element/Element;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isClassLiteral(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    sget-object v1, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v2, "this"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    nop

    .line 209
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 208
    invoke-virtual {p2, v1, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getEnclosingType(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    return-object v1

    .line 199
    :pswitch_0
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 213
    :cond_1
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 214
    .local v1, "t":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->types:Ljavax/lang/model/util/Types;

    invoke-static {v2, p2, v1, v0}, Lorg/checkerframework/framework/util/AnnotatedTypes;->asMemberOf(Ljavax/lang/model/util/Types;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lcom/sun/source/tree/MethodInvocationTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/MethodInvocationTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 321
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->methodFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v0

    iget-object v0, v0, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 322
    .local v0, "ex":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->asUse()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 239
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    .line 241
    .local v0, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v1

    if-nez v1, :cond_0

    .line 242
    return-object v0

    .line 245
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->annotateArrayAsArray(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;Lcom/sun/source/tree/NewArrayTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 247
    return-object v0
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 309
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromNewClass(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 312
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->constructorFromUse(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;

    move-result-object v1

    iget-object v1, v1, Lorg/checkerframework/framework/type/AnnotatedTypeFactory$ParameterizedExecutableType;->executableType:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;

    .line 313
    .local v1, "ex":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReturnType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->addMissingAnnotations(Ljava/lang/Iterable;)V

    .line 315
    return-object v0
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 125
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitParenthesized(Lcom/sun/source/tree/ParenthesizedTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/ParenthesizedTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 329
    invoke-interface {p1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method

.method public bridge synthetic visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/PrimitiveTypeTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 113
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 107
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->fromTypeTree(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 95
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 4
    .param p1, "node"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "f"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;

    .line 335
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getBound()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/framework/type/TypeFromExpressionVisitor;->visit(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 337
    .local v0, "bound":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p2, p1}, Lorg/checkerframework/framework/type/AnnotatedTypeFactory;->type(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 338
    .local v1, "result":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    instance-of v2, v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    if-eqz v2, :cond_2

    .line 345
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_0

    .line 346
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/WildcardTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_1

    .line 349
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getExtendsBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/checkerframework/framework/type/visitor/AnnotatedTypeMerger;->merge(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 351
    :cond_1
    :goto_0
    return-object v1

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
