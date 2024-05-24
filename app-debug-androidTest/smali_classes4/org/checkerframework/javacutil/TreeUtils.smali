.class public final Lorg/checkerframework/javacutil/TreeUtils;
.super Ljava/lang/Object;
.source "TreeUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final classTreeKinds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeTreeKinds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 76
    nop

    .line 812
    const-class v0, Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds:Ljava/util/Set;

    .line 813
    invoke-static {}, Lcom/sun/source/tree/Tree$Kind;->values()[Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 814
    .local v4, "kind":Lcom/sun/source/tree/Tree$Kind;
    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->asInterface()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/sun/source/tree/ClassTree;

    if-ne v5, v6, :cond_0

    .line 815
    sget-object v5, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v4    # "kind":Lcom/sun/source/tree/Tree$Kind;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 839
    :cond_1
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/sun/source/tree/Tree$Kind;

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->ANNOTATED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    aput-object v3, v1, v2

    .line 840
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/javacutil/TreeUtils;->typeTreeKinds:Ljava/util/Set;

    .line 839
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Class TreeUtils cannot be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/AnnotationTree;

    .line 1279
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lcom/sun/tools/javac/code/Attribute$Compound;

    return-object v0
.end method

.method public static annotationsFromArrayCreation(Lcom/sun/source/tree/NewArrayTree;I)Ljava/util/List;
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/NewArrayTree;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/NewArrayTree;",
            "I)",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1311
    instance-of v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    if-eqz v0, :cond_2

    .line 1312
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;

    .line 1314
    .local v0, "newArray":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1315
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1318
    :cond_0
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lcom/sun/tools/javac/util/List;

    .line 1320
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1321
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1324
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1311
    .end local v0    # "newArray":Lcom/sun/tools/javac/tree/JCTree$JCNewArray;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static annotationsFromTree(Lcom/sun/source/tree/AnnotatedTypeTree;)Ljava/util/List;
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/AnnotatedTypeTree;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1289
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static annotationsFromTree(Lcom/sun/source/tree/TypeParameterTree;)Ljava/util/List;
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/TypeParameterTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/TypeParameterTree;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1299
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static annotationsFromTypeAnnotationTrees(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;)",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;"
        }
    .end annotation

    .line 1265
    .local p0, "annoTreess":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/AnnotationTree;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1266
    .local v0, "annotations":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/AnnotationTree;

    .line 1267
    .local v2, "anno":Lcom/sun/source/tree/AnnotationTree;
    invoke-static {v2}, Lorg/checkerframework/javacutil/TreeUtils;->annotationFromAnnotationTree(Lcom/sun/source/tree/AnnotationTree;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    .end local v2    # "anno":Lcom/sun/source/tree/AnnotationTree;
    goto :goto_0

    .line 1269
    :cond_0
    return-object v0
.end method

.method public static canHaveTypeAnnotation(Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1111
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static classTreeKinds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation

    .line 826
    sget-object v0, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds:Ljava/util/Set;

    return-object v0
.end method

.method public static constructor(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/NewClassTree;

    .line 575
    instance-of v0, p0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    if-eqz v0, :cond_3

    .line 579
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 581
    .local v0, "newClassTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    invoke-interface {p0}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 591
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 592
    invoke-static {v1, v0}, Lcom/sun/tools/javac/tree/TreeInfo;->declarationFor(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;

    .line 593
    .local v1, "anonConstructor":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    if-eqz v1, :cond_1

    .line 594
    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 595
    iget-object v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    iget-object v2, v2, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;

    .line 596
    .local v2, "stmt":Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
    iget-object v3, v2, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    .line 597
    .local v3, "superInvok":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    iget-object v4, v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/ExecutableElement;

    return-object v4

    .line 594
    .end local v2    # "stmt":Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;
    .end local v3    # "superInvok":Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 593
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 599
    .end local v1    # "anonConstructor":Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;
    :cond_2
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    .line 600
    .local v1, "e":Ljavax/lang/model/element/Element;
    move-object v2, v1

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    return-object v2

    .line 576
    .end local v0    # "newClassTree":Lcom/sun/tools/javac/tree/JCTree$JCNewClass;
    .end local v1    # "e":Ljavax/lang/model/element/Element;
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "InternalUtils.constructor: not a javac internal tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static containsThisConstructorInvocation(Lcom/sun/source/tree/MethodTree;)Z
    .locals 4
    .param p0, "node"    # Lcom/sun/source/tree/MethodTree;

    .line 642
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isConstructor(Lcom/sun/source/tree/MethodTree;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 646
    :cond_0
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/StatementTree;

    .line 647
    .local v0, "st":Lcom/sun/source/tree/StatementTree;
    instance-of v2, v0, Lcom/sun/source/tree/ExpressionStatementTree;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 648
    invoke-interface {v2}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/source/tree/MethodInvocationTree;

    if-nez v2, :cond_1

    goto :goto_0

    .line 653
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ExpressionStatementTree;

    .line 654
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionStatementTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    .line 656
    .local v1, "invocation":Lcom/sun/source/tree/MethodInvocationTree;
    const-string v2, "this"

    invoke-static {v1}, Lorg/checkerframework/javacutil/TreeUtils;->methodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 650
    .end local v1    # "invocation":Lcom/sun/source/tree/MethodInvocationTree;
    :cond_2
    :goto_0
    return v1

    .line 643
    .end local v0    # "st":Lcom/sun/source/tree/StatementTree;
    :cond_3
    :goto_1
    return v1
.end method

.method public static elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;
    .locals 3
    .param p0, "node"    # Lcom/sun/source/tree/MethodTree;

    .line 505
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    .line 506
    .local v0, "elt":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v0, :cond_0

    .line 507
    return-object v0

    .line 506
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;
    .locals 3
    .param p0, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 494
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 495
    .local v0, "elt":Ljavax/lang/model/element/TypeElement;
    if-eqz v0, :cond_0

    .line 496
    return-object v0

    .line 495
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;
    .locals 3
    .param p0, "node"    # Lcom/sun/source/tree/VariableTree;

    .line 516
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 517
    .local v0, "elt":Ljavax/lang/model/element/VariableElement;
    if-eqz v0, :cond_0

    .line 518
    return-object v0

    .line 517
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 446
    if-eqz p0, :cond_4

    .line 450
    instance-of v0, p0, Lcom/sun/tools/javac/tree/JCTree;

    if-eqz v0, :cond_3

    .line 454
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isExpressionTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object p0

    .line 458
    :cond_0
    sget-object v0, Lorg/checkerframework/javacutil/TreeUtils$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 479
    :pswitch_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isTypeDeclaration(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_2

    .line 481
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 476
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->sym:Lcom/sun/tools/javac/code/Symbol;

    return-object v0

    .line 468
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ArrayAccessTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    return-object v0

    .line 471
    :pswitch_3
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->constructor:Lcom/sun/tools/javac/code/Symbol;

    return-object v0

    .line 462
    :pswitch_4
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->getMethodSelect()Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 465
    :pswitch_5
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/AssignmentTree;

    invoke-interface {v0}, Lcom/sun/source/tree/AssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 484
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 482
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->symbolFor(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0

    .line 451
    :cond_3
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "InternalUtils.symbol: tree is not a valid Javac tree"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_4
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "InternalUtils.symbol: tree is null"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;
    .locals 1
    .param p0, "node"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 535
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    return-object v0
.end method

.method public static elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;
    .locals 2
    .param p0, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 540
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 541
    .local v0, "el":Ljavax/lang/model/element/Element;
    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_0

    .line 542
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    return-object v1

    .line 544
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static elementFromUse(Lcom/sun/source/tree/NewClassTree;)Ljavax/lang/model/element/ExecutableElement;
    .locals 2
    .param p0, "node"    # Lcom/sun/source/tree/NewClassTree;

    .line 554
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 555
    .local v0, "el":Ljavax/lang/model/element/Element;
    instance-of v1, v0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v1, :cond_0

    .line 556
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    return-object v1

    .line 558
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 285
    invoke-static {}, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ClassTree;

    return-object v0
.end method

.method public static enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 307
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/MethodTree;

    return-object v0
.end method

.method public static enclosingMethodOrLambda(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;
    .locals 2
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 320
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->METHOD:Lcom/sun/source/tree/Tree$Kind;

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public static enclosingNonParen(Lcom/sun/source/util/TreePath;)Lorg/checkerframework/javacutil/Pair;
    .locals 5
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 359
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 360
    .local v1, "enclosing":Lcom/sun/source/tree/Tree;
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 361
    .local v2, "enclosingChild":Lcom/sun/source/tree/Tree;
    :goto_0
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v3

    sget-object v4, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    if-ne v3, v4, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 363
    move-object v2, v1

    .line 364
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v3

    return-object v3
.end method

.method public static enclosingOfClass(Lcom/sun/source/util/TreePath;Ljava/lang/Class;)Lcom/sun/source/tree/Tree;
    .locals 3
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/source/tree/Tree;",
            ">(",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 262
    .local p1, "treeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .line 264
    .local v0, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 266
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/Tree;

    return-object v2

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 270
    .end local v1    # "leaf":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 272
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static enclosingOfKind(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 183
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public static enclosingOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/tree/Tree;
    .locals 3
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;)",
            "Lcom/sun/source/tree/Tree;"
        }
    .end annotation

    .line 194
    .local p1, "kinds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/source/tree/Tree$Kind;>;"
    move-object v0, p0

    .line 196
    .local v0, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 198
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_1

    .line 199
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    return-object v1

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 203
    .end local v1    # "leaf":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 198
    .restart local v1    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 205
    .end local v1    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static enclosingTopLevelBlock(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/BlockTree;
    .locals 3
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 324
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 325
    .local v0, "parpath":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    move-object p0, v0

    .line 327
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/BlockTree;

    return-object v1

    .line 332
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static enclosingVariable(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/VariableTree;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 295
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingOfKind(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    return-object v0
.end method

.method public static findFunction(Lcom/sun/source/tree/Tree;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/tools/javac/code/Symbol;
    .locals 3
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1355
    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v0

    .line 1356
    .local v0, "ctx":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v1

    .line 1357
    .local v1, "javacTypes":Lcom/sun/tools/javac/code/Types;
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->asElement()Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Types;->findDescriptorSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    return-object v2
.end method

.method public static firstStatement(Lcom/sun/source/tree/Tree;)Lcom/sun/source/tree/Tree;
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 669
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_1

    .line 670
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/BlockTree;

    .line 671
    .local v0, "block":Lcom/sun/source/tree/BlockTree;
    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    move-object v1, v0

    .local v1, "first":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 674
    .end local v1    # "first":Lcom/sun/source/tree/Tree;
    :cond_0
    invoke-interface {v0}, Lcom/sun/source/tree/BlockTree;->getStatements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/source/tree/Tree;

    .line 676
    .end local v0    # "block":Lcom/sun/source/tree/BlockTree;
    .restart local v1    # "first":Lcom/sun/source/tree/Tree;
    :goto_0
    goto :goto_1

    .line 677
    .end local v1    # "first":Lcom/sun/source/tree/Tree;
    :cond_1
    move-object v1, p0

    .line 679
    .restart local v1    # "first":Lcom/sun/source/tree/Tree;
    :goto_1
    return-object v1
.end method

.method public static getAssignmentContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;
    .locals 6
    .param p0, "treePath"    # Lcom/sun/source/util/TreePath;

    .line 398
    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 400
    .local v0, "parentPath":Lcom/sun/source/util/TreePath;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 401
    return-object v1

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 405
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    sget-object v3, Lorg/checkerframework/javacutil/TreeUtils$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 427
    instance-of v3, v2, Lcom/sun/source/tree/CompoundAssignmentTree;

    if-eqz v3, :cond_2

    .line 428
    return-object v2

    .line 423
    :pswitch_0
    return-object v2

    .line 409
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 410
    .local v3, "cet":Lcom/sun/source/tree/ConditionalExpressionTree;
    invoke-interface {v3}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 413
    return-object v1

    .line 416
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getAssignmentContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    return-object v1

    .line 407
    .end local v3    # "cet":Lcom/sun/source/tree/ConditionalExpressionTree;
    :pswitch_2
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getAssignmentContext(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/Tree;

    move-result-object v1

    return-object v1

    .line 430
    :cond_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/VariableElement;
    .locals 4
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 1144
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 1145
    .local v0, "mapElt":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->fieldsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    .line 1146
    .local v2, "var":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v3, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    return-object v2

    .line 1149
    .end local v2    # "var":Ljavax/lang/model/element/VariableElement;
    :cond_0
    goto :goto_0

    .line 1150
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    const-string v2, "TreeUtils.getField: shouldn\'t be here"

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFieldName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1047
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 1049
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 1050
    .local v0, "mtree":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1052
    .end local v0    # "mtree":Lcom/sun/source/tree/MemberSelectTree;
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 1053
    .local v0, "itree":Lcom/sun/source/tree/IdentifierTree;
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1047
    .end local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;
    .locals 4
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # I
    .param p3, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 907
    invoke-static {p0, p1, p2, p3}, Lorg/checkerframework/javacutil/TreeUtils;->getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;

    move-result-object v0

    .line 908
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 909
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    return-object v1

    .line 911
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    .line 913
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, p1, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "TreeUtils.getMethod(%s, %s, %d): expected 1 match, found %d"

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static varargs getMethod(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;[Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;
    .locals 10
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p3, "paramTypes"    # [Ljava/lang/String;

    .line 942
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 943
    .local v0, "typeElt":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 944
    .local v2, "exec":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-interface {v3, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 945
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    array-length v4, p3

    if-ne v3, v4, :cond_2

    .line 946
    const/4 v3, 0x1

    .line 947
    .local v3, "typesMatch":Z
    invoke-interface {v2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 948
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_1

    .line 949
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    .line 950
    .local v6, "ve":Ljavax/lang/model/element/VariableElement;
    invoke-interface {v6}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/javacutil/TypeAnnotationUtils;->unannotatedType(Ljavax/lang/model/type/TypeMirror;)Lcom/sun/tools/javac/code/Type;

    move-result-object v7

    .line 951
    .local v7, "tm":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, p3, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 952
    const/4 v3, 0x0

    .line 953
    goto :goto_2

    .line 948
    .end local v6    # "ve":Ljavax/lang/model/element/VariableElement;
    .end local v7    # "tm":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 956
    .end local v5    # "i":I
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 957
    return-object v2

    .line 960
    .end local v2    # "exec":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "typesMatch":Z
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/VariableElement;>;"
    :cond_2
    goto :goto_0

    .line 961
    :cond_3
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TreeUtils.getMethod: found no match for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 967
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getMethodName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1095
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 1097
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 1098
    .local v0, "mtree":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1100
    .end local v0    # "mtree":Lcom/sun/source/tree/MemberSelectTree;
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 1101
    .local v0, "itree":Lcom/sun/source/tree/IdentifierTree;
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1095
    .end local v0    # "itree":Lcom/sun/source/tree/IdentifierTree;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getMethods(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljava/util/List;
    .locals 5
    .param p0, "typeName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "params"    # I
    .param p3, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 923
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v1

    invoke-interface {v1, p0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 924
    .local v1, "typeElt":Ljavax/lang/model/element/TypeElement;
    if-eqz v1, :cond_2

    .line 927
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 928
    .local v3, "exec":Ljavax/lang/model/element/ExecutableElement;
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {v4, p1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 930
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    .end local v3    # "exec":Ljavax/lang/model/element/ExecutableElement;
    :cond_0
    goto :goto_0

    .line 933
    :cond_1
    return-object v0

    .line 925
    :cond_2
    new-instance v2, Lorg/checkerframework/javacutil/UserError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration problem! Could not load type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;
    .locals 4
    .param p0, "expression"    # Lcom/sun/source/tree/ExpressionTree;

    .line 764
    sget-object v0, Lorg/checkerframework/javacutil/TreeUtils$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 795
    :pswitch_0
    return-object v1

    .line 785
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 787
    .local v0, "receiver":Lcom/sun/source/tree/ExpressionTree;
    instance-of v2, v0, Lcom/sun/source/tree/PrimitiveTypeTree;

    if-eqz v2, :cond_0

    .line 788
    return-object v1

    .line 793
    .end local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    :pswitch_2
    return-object v1

    .line 782
    :pswitch_3
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ArrayAccessTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 783
    .restart local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 779
    .end local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    :pswitch_4
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getEnclosingExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 780
    .restart local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 769
    .end local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    :pswitch_5
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 771
    .restart local v0    # "receiver":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_2

    .line 772
    move-object v2, v0

    check-cast v2, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v2}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 797
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 798
    return-object v1

    .line 801
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    return-object v1

    .line 775
    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static hasExplicitConstructor(Lcom/sun/source/tree/ClassTree;)Z
    .locals 10
    .param p0, "node"    # Lcom/sun/source/tree/ClassTree;

    .line 689
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/ClassTree;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 691
    .local v0, "elem":Ljavax/lang/model/element/TypeElement;
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljavax/lang/model/util/ElementFilter;->constructorsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 692
    .local v2, "ee":Ljavax/lang/model/element/ExecutableElement;
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 693
    .local v3, "ms":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    .line 695
    .local v4, "mod":J
    const-wide/16 v6, 0x1000

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 696
    const/4 v1, 0x1

    return v1

    .line 698
    .end local v2    # "ee":Ljavax/lang/model/element/ExecutableElement;
    .end local v3    # "ms":Lcom/sun/tools/javac/code/Symbol$MethodSymbol;
    .end local v4    # "mod":J
    :cond_0
    goto :goto_0

    .line 699
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isAnonymousConstructor(Lcom/sun/source/tree/MethodTree;)Z
    .locals 7
    .param p0, "method"    # Lcom/sun/source/tree/MethodTree;

    .line 1245
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 1246
    .local v0, "e":Ljavax/lang/model/element/Element;
    instance-of v1, v0, Lcom/sun/tools/javac/code/Symbol;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1247
    return v2

    .line 1250
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 1251
    const/4 v1, 0x1

    return v1

    .line 1254
    :cond_1
    return v2
.end method

.method public static isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z
    .locals 3
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1226
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 1227
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isFieldAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->getFieldName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 1230
    .local v0, "expressionTree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_0

    .line 1231
    const/4 v1, 0x1

    return v1

    .line 1234
    .end local v0    # "expressionTree":Lcom/sun/source/tree/ExpressionTree;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isClassLiteral(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1005
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-eq v0, v1, :cond_0

    .line 1006
    const/4 v0, 0x0

    return v0

    .line 1008
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isClassTree(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 836
    invoke-static {}, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCompileTimeString(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p0, "node"    # Lcom/sun/source/tree/ExpressionTree;

    .line 744
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 745
    .local v0, "tree":Lcom/sun/source/tree/ExpressionTree;
    instance-of v1, v0, Lcom/sun/source/tree/LiteralTree;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 746
    return v2

    .line 749
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 751
    .local v1, "elt":Ljavax/lang/model/element/Element;
    invoke-static {v1}, Lorg/checkerframework/javacutil/ElementUtils;->isCompileTimeConstant(Ljavax/lang/model/element/Element;)Z

    move-result v2

    return v2

    .line 752
    .end local v1    # "elt":Ljavax/lang/model/element/Element;
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isStringConcatenation(Lcom/sun/source/tree/Tree;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 753
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/BinaryTree;

    .line 754
    .local v1, "binOp":Lcom/sun/source/tree/BinaryTree;
    invoke-interface {v1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->isCompileTimeString(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 755
    invoke-interface {v1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/javacutil/TreeUtils;->isCompileTimeString(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 754
    :goto_0
    return v2

    .line 757
    .end local v1    # "binOp":Lcom/sun/source/tree/BinaryTree;
    :cond_3
    return v3
.end method

.method public static isConstructor(Lcom/sun/source/tree/MethodTree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/MethodTree;

    .line 90
    invoke-interface {p0}, Lcom/sun/source/tree/MethodTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "<init>"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isDiamondTree(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 709
    sget-object v0, Lorg/checkerframework/javacutil/TreeUtils$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 717
    const/4 v0, 0x0

    return v0

    .line 713
    :sswitch_0
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    invoke-interface {v0}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    .line 711
    :sswitch_1
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/AnnotatedTypeTree;

    invoke-interface {v0}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isDiamondTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0

    .line 715
    :sswitch_2
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/NewClassTree;

    invoke-interface {v0}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isDiamondTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public static isEnumSuper(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 5
    .param p0, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 1169
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 1170
    .local v0, "ex":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v0, :cond_2

    .line 1171
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getQualifiedClassName(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 1172
    .local v1, "name":Ljavax/lang/model/element/Name;
    if-eqz v1, :cond_1

    .line 1173
    const-string v2, "java.lang.Enum"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1174
    .local v2, "correctClass":Z
    const-string v3, "<init>"

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1175
    .local v3, "correctMethod":Z
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 1172
    .end local v2    # "correctClass":Z
    .end local v3    # "correctMethod":Z
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1170
    .end local v1    # "name":Ljavax/lang/model/element/Name;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isExplicitThisDereference(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 977
    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x1

    const-string v3, "this"

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 978
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {v0, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    return v2

    .line 983
    :cond_0
    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 984
    return v4

    .line 987
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 988
    .local v0, "memSelTree":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {v1, v3}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 990
    return v2

    .line 992
    :cond_2
    return v4
.end method

.method public static isExpressionTree(Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1161
    instance-of v0, p0, Lcom/sun/source/tree/ExpressionTree;

    return v0
.end method

.method public static isFieldAccess(Lcom/sun/source/tree/Tree;)Z
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1022
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    if-ne v0, v1, :cond_1

    .line 1024
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 1025
    .local v0, "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1027
    .local v1, "el":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v2

    return v2

    .line 1025
    .end local v1    # "el":Ljavax/lang/model/element/Element;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1028
    .end local v0    # "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    :cond_1
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 1030
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 1031
    .local v0, "ident":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1032
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1033
    .restart local v1    # "el":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1034
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v4, "this"

    invoke-interface {v2, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1035
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v2

    const-string v4, "super"

    invoke-interface {v2, v4}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1033
    :goto_0
    return v3

    .line 1031
    .end local v1    # "el":Ljavax/lang/model/element/Element;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1037
    .end local v0    # "ident":Lcom/sun/source/tree/IdentifierTree;
    :cond_4
    return v3
.end method

.method public static isImplicitlyTypedLambda(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1370
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->LAMBDA_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCLambda;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCLambda;->paramKind:Lcom/sun/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v1, Lcom/sun/tools/javac/tree/JCTree$JCLambda$ParameterKind;->IMPLICIT:Lcom/sun/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLocalVariable(Lcom/sun/source/tree/Tree;)Z
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1329
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 1330
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1332
    :cond_1
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_4

    .line 1333
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 1334
    .local v0, "etree":Lcom/sun/source/tree/ExpressionTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1335
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v4, Ljavax/lang/model/element/ElementKind;->LOCAL_VARIABLE:Ljavax/lang/model/element/ElementKind;

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    .line 1334
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1337
    .end local v0    # "etree":Lcom/sun/source/tree/ExpressionTree;
    :cond_4
    return v3
.end method

.method public static isMethodAccess(Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1068
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    const-string v2, "@AssumeAssertion(nullness): tree kind"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 1070
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 1071
    .local v0, "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1072
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1073
    .local v1, "el":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v5, :cond_1

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    .line 1071
    .end local v1    # "el":Ljavax/lang/model/element/Element;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1074
    .end local v0    # "memberSelect":Lcom/sun/source/tree/MemberSelectTree;
    :cond_3
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_9

    .line 1076
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 1078
    .local v0, "ident":Lcom/sun/source/tree/IdentifierTree;
    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v5, "super"

    invoke-interface {v1, v5}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    const-string v5, "this"

    invoke-interface {v1, v5}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 1081
    :cond_4
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1082
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1083
    .restart local v1    # "el":Ljavax/lang/model/element/Element;
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v5, :cond_6

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v5, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :cond_6
    :goto_1
    return v3

    .line 1081
    .end local v1    # "el":Ljavax/lang/model/element/Element;
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1079
    :cond_8
    :goto_2
    return v3

    .line 1085
    .end local v0    # "ident":Lcom/sun/source/tree/IdentifierTree;
    :cond_9
    return v4
.end method

.method public static isMethodInvocation(Lcom/sun/source/tree/Tree;Ljava/util/List;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 4
    .param p0, "methodTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;",
            "Ljavax/annotation/processing/ProcessingEnvironment;",
            ")Z"
        }
    .end annotation

    .line 888
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/ExecutableElement;>;"
    instance-of v0, p0, Lcom/sun/source/tree/MethodInvocationTree;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 889
    return v1

    .line 891
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/ExecutableElement;

    .line 892
    .local v2, "Method":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {p0, v2, p2}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 893
    const/4 v0, 0x1

    return v0

    .line 895
    .end local v2    # "Method":Ljavax/lang/model/element/ExecutableElement;
    :cond_1
    goto :goto_0

    .line 896
    :cond_2
    return v1
.end method

.method public static isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 4
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 873
    instance-of v0, p0, Lcom/sun/source/tree/MethodInvocationTree;

    if-nez v0, :cond_0

    .line 874
    const/4 v0, 0x0

    return v0

    .line 876
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    .line 877
    .local v0, "methInvok":Lcom/sun/source/tree/MethodInvocationTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    .line 878
    .local v1, "invoked":Ljavax/lang/model/element/ExecutableElement;
    if-eqz v1, :cond_1

    .line 879
    invoke-static {v1, p1, p2}, Lorg/checkerframework/javacutil/ElementUtils;->isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v2

    return v2

    .line 878
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "@AssumeAssertion(nullness): assumption"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static isNamedMethodCall(Ljava/lang/String;Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 121
    invoke-interface {p1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethodName(Lcom/sun/source/tree/Tree;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSelfAccess(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 145
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 147
    .local v0, "tr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->ARRAY_ACCESS:Lcom/sun/source/tree/Tree$Kind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 148
    return v3

    .line 151
    :cond_0
    invoke-interface {p0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->METHOD_INVOCATION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 152
    move-object v1, p0

    check-cast v1, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 154
    :cond_1
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->TYPE_CAST:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_2

    .line 156
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/TypeCastTree;

    invoke-interface {v1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 158
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 161
    return v4

    .line 164
    :cond_3
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_6

    .line 165
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_6

    .line 167
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 168
    .local v1, "ident":Ljavax/lang/model/element/Name;
    const-string v2, "this"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "super"

    invoke-interface {v1, v2}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3

    .line 172
    .end local v1    # "ident":Ljavax/lang/model/element/Name;
    :cond_6
    return v3
.end method

.method public static isSpecificFieldAccess(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/VariableElement;)Z
    .locals 3
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "var"    # Ljavax/lang/model/element/VariableElement;

    .line 1119
    instance-of v0, p0, Lcom/sun/source/tree/MemberSelectTree;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    if-eqz v0, :cond_1

    .line 1120
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 1121
    .local v0, "memSel":Lcom/sun/source/tree/MemberSelectTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1123
    .local v1, "field":Ljavax/lang/model/element/Element;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1121
    .end local v1    # "field":Ljavax/lang/model/element/Element;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1124
    .end local v0    # "memSel":Lcom/sun/source/tree/MemberSelectTree;
    :cond_1
    instance-of v0, p0, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v0, :cond_3

    .line 1125
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    .line 1126
    .local v0, "idTree":Lcom/sun/source/tree/IdentifierTree;
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1127
    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    .line 1128
    .restart local v1    # "field":Ljavax/lang/model/element/Element;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1126
    .end local v1    # "field":Ljavax/lang/model/element/Element;
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1130
    .end local v0    # "idTree":Lcom/sun/source/tree/IdentifierTree;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isStringCompoundConcatenation(Lcom/sun/source/tree/CompoundAssignmentTree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/CompoundAssignmentTree;

    .line 728
    invoke-interface {p0}, Lcom/sun/source/tree/CompoundAssignmentTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 729
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 728
    :goto_0
    return v0
.end method

.method public static isStringConcatenation(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 723
    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->PLUS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 100
    const-string v0, "super"

    invoke-static {v0, p0}, Lorg/checkerframework/javacutil/TreeUtils;->isNamedMethodCall(Ljava/lang/String;Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    return v0
.end method

.method public static isThisConstructorCall(Lcom/sun/source/tree/MethodInvocationTree;)Z
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 110
    const-string v0, "this"

    invoke-static {v0, p0}, Lorg/checkerframework/javacutil/TreeUtils;->isNamedMethodCall(Ljava/lang/String;Lcom/sun/source/tree/MethodInvocationTree;)Z

    move-result v0

    return v0
.end method

.method public static isTreeInStaticScope(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 1196
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingMethod(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/MethodTree;

    move-result-object v0

    .line 1198
    .local v0, "enclosingMethod":Lcom/sun/source/tree/MethodTree;
    if-eqz v0, :cond_0

    .line 1199
    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1202
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingTopLevelBlock(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/BlockTree;

    move-result-object v1

    .line 1203
    .local v1, "block":Lcom/sun/source/tree/BlockTree;
    if-eqz v1, :cond_1

    .line 1204
    invoke-interface {v1}, Lcom/sun/source/tree/BlockTree;->isStatic()Z

    move-result v2

    return v2

    .line 1208
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingVariable(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/VariableTree;

    move-result-object v2

    .line 1209
    .local v2, "t":Lcom/sun/source/tree/Tree;
    if-eqz v2, :cond_2

    .line 1210
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/VariableTree;

    invoke-interface {v3}, Lcom/sun/source/tree/VariableTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1212
    :cond_2
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->enclosingClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/tree/ClassTree;

    move-result-object v3

    .line 1213
    .local v3, "classTree":Lcom/sun/source/tree/ClassTree;
    if-eqz v3, :cond_3

    .line 1214
    invoke-interface {v3}, Lcom/sun/source/tree/ClassTree;->getModifiers()Lcom/sun/source/tree/ModifiersTree;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/source/tree/ModifiersTree;->getFlags()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 1216
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public static isTypeDeclaration(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "node"    # Lcom/sun/source/tree/Tree;

    .line 1186
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isClassTree(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isTypeTree(Lcom/sun/source/tree/Tree;)Z
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 864
    invoke-static {}, Lorg/checkerframework/javacutil/TreeUtils;->typeTreeKinds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 3
    .param p0, "node"    # Lcom/sun/source/tree/ExpressionTree;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "elementFromUse(#1)"
        }
        result = true
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 613
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 614
    .local v0, "realnode":Lcom/sun/source/tree/ExpressionTree;
    sget-object v1, Lorg/checkerframework/javacutil/TreeUtils$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 622
    const/4 v1, 0x0

    return v1

    .line 619
    :sswitch_0
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 620
    const/4 v1, 0x1

    return v1

    .line 619
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): inspection"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public static methodName(Lcom/sun/source/tree/MethodInvocationTree;)Ljavax/lang/model/element/Name;
    .locals 4
    .param p0, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 628
    invoke-interface {p0}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 629
    .local v0, "expr":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 630
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v1}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1

    .line 631
    :cond_0
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_1

    .line 632
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    return-object v1

    .line 634
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TreeUtils.methodName: cannot be here: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static pathTillClass(Lcom/sun/source/util/TreePath;)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;

    .line 216
    invoke-static {}, Lorg/checkerframework/javacutil/TreeUtils;->classTreeKinds()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->pathTillOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public static pathTillOfKind(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree$Kind;)Lcom/sun/source/util/TreePath;
    .locals 1
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;

    .line 227
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/TreeUtils;->pathTillOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/util/TreePath;

    move-result-object v0

    return-object v0
.end method

.method public static pathTillOfKind(Lcom/sun/source/util/TreePath;Ljava/util/Set;)Lcom/sun/source/util/TreePath;
    .locals 3
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/util/TreePath;",
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;)",
            "Lcom/sun/source/util/TreePath;"
        }
    .end annotation

    .line 239
    .local p1, "kinds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/source/tree/Tree$Kind;>;"
    move-object v0, p0

    .line 241
    .local v0, "p":Lcom/sun/source/util/TreePath;
    :goto_0
    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    .line 243
    .local v1, "leaf":Lcom/sun/source/tree/Tree;
    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    return-object v0

    .line 247
    :cond_0
    invoke-virtual {v0}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v0

    .line 248
    .end local v1    # "leaf":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 243
    .restart local v1    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 250
    .end local v1    # "leaf":Lcom/sun/source/tree/Tree;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;

    .line 1342
    move-object v0, p0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method public static typeTreeKinds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/Tree$Kind;",
            ">;"
        }
    .end annotation

    .line 851
    sget-object v0, Lorg/checkerframework/javacutil/TreeUtils;->typeTreeKinds:Ljava/util/Set;

    return-object v0
.end method

.method public static withoutParens(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;
    .locals 3
    .param p0, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 343
    move-object v0, p0

    .line 344
    .local v0, "t":Lcom/sun/source/tree/ExpressionTree;
    :goto_0
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->PARENTHESIZED:Lcom/sun/source/tree/Tree$Kind;

    if-ne v1, v2, :cond_0

    .line 345
    move-object v1, v0

    check-cast v1, Lcom/sun/source/tree/ParenthesizedTree;

    invoke-interface {v1}, Lcom/sun/source/tree/ParenthesizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_0
    return-object v0
.end method
