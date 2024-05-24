.class public Lorg/checkerframework/checker/nullness/NullnessVisitor;
.super Lorg/checkerframework/checker/initialization/InitializationVisitor;
.source "NullnessVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/checker/initialization/InitializationVisitor<",
        "Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;",
        "Lorg/checkerframework/checker/nullness/NullnessValue;",
        "Lorg/checkerframework/checker/nullness/NullnessStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCESSING_NULLABLE:Ljava/lang/String; = "accessing.nullable"

.field private static final CONDITION_NULLABLE:Ljava/lang/String; = "condition.nullable"

.field private static final DEREFERENCE_OF_NULLABLE:Ljava/lang/String; = "dereference.of.nullable"

.field private static final ITERATING_NULLABLE:Ljava/lang/String; = "iterating.over.nullable"

.field private static final KNOWN_NONNULL:Ljava/lang/String; = "known.nonnull"

.field private static final LOCKING_NULLABLE:Ljava/lang/String; = "locking.nullable"

.field private static final SWITCHING_NULLABLE:Ljava/lang/String; = "switching.nullable"

.field private static final THROWING_NULLABLE:Ljava/lang/String; = "throwing.nullable"

.field private static final UNBOXING_OF_NULLABLE:Ljava/lang/String; = "unboxing.of.nullable"


# instance fields
.field private final MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

.field private final NONNULL:Ljavax/lang/model/element/AnnotationMirror;

.field private final NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

.field private final collectionSize:Ljavax/lang/model/element/ExecutableElement;

.field private final collectionToArray:Ljavax/lang/model/element/ExecutableElement;

.field private final stringType:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 4
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 86
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/initialization/InitializationVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    .line 88
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 89
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v0, v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 91
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->elements:Ljavax/lang/model/util/Elements;

    const-string v1, "java.lang.String"

    invoke-interface {v0, v1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->stringType:Ljavax/lang/model/type/TypeMirror;

    .line 93
    invoke-virtual {p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v0

    .line 94
    .local v0, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    const-class v1, Ljava/util/Collection;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;ILjavax/annotation/processing/ProcessingEnvironment;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->collectionSize:Ljavax/lang/model/element/ExecutableElement;

    .line 96
    const-class v1, Ljava/util/Collection;

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T[]"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "toArray"

    invoke-static {v1, v3, v0, v2}, Lorg/checkerframework/javacutil/TreeUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljavax/annotation/processing/ProcessingEnvironment;[Ljava/lang/String;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->collectionToArray:Ljavax/lang/model/element/ExecutableElement;

    .line 98
    return-void
.end method

.method private checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 444
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private checkForNullability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;
    .param p3, "errMsg"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 459
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private containsSameByName(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3
    .param p2, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")Z"
        }
    .end annotation

    .line 149
    .local p1, "quals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 150
    .local v1, "q":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v2, p2, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->areSameByClass(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v0, 0x1

    return v0

    .line 153
    .end local v1    # "q":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isNewArrayAllZeroDims(Lcom/sun/source/tree/NewArrayTree;)Z
    .locals 5
    .param p0, "node"    # Lcom/sun/source/tree/NewArrayTree;

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, "isAllZeros":Z
    invoke-interface {p0}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/ExpressionTree;

    .line 260
    .local v2, "dim":Lcom/sun/source/tree/ExpressionTree;
    instance-of v3, v2, Lcom/sun/source/tree/LiteralTree;

    if-eqz v3, :cond_2

    .line 261
    move-object v3, v2

    check-cast v3, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {v3}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 262
    .local v3, "val":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 266
    .end local v3    # "val":Ljava/lang/Object;
    :cond_0
    nop

    .line 270
    .end local v2    # "dim":Lcom/sun/source/tree/ExpressionTree;
    goto :goto_0

    .line 263
    .restart local v2    # "dim":Lcom/sun/source/tree/ExpressionTree;
    .restart local v3    # "val":Ljava/lang/Object;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 264
    goto :goto_2

    .line 267
    .end local v3    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 268
    nop

    .line 271
    .end local v2    # "dim":Lcom/sun/source/tree/ExpressionTree;
    :cond_3
    :goto_2
    return v0
.end method

.method private isNewArrayInToArray(Lcom/sun/source/tree/NewArrayTree;)Z
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;

    .line 275
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 276
    return v1

    .line 279
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/NewArrayTree;->getDimensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    .line 280
    .local v0, "dim":Lcom/sun/source/tree/ExpressionTree;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getProcessingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;

    move-result-object v3

    .line 282
    .local v3, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->collectionSize:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0, v4, v3}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 283
    return v1

    .line 286
    :cond_1
    move-object v4, v0

    check-cast v4, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v4}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 287
    .local v4, "rcvsize":Lcom/sun/source/tree/ExpressionTree;
    instance-of v5, v4, Lcom/sun/source/tree/MemberSelectTree;

    if-nez v5, :cond_2

    .line 288
    return v1

    .line 290
    :cond_2
    move-object v5, v4

    check-cast v5, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v5}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v4

    .line 291
    instance-of v5, v4, Lcom/sun/source/tree/IdentifierTree;

    if-nez v5, :cond_3

    .line 292
    return v1

    .line 295
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->getCurrentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    .line 297
    .local v5, "encl":Lcom/sun/source/tree/Tree;
    iget-object v6, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->collectionToArray:Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v5, v6, v3}, Lorg/checkerframework/javacutil/TreeUtils;->isMethodInvocation(Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 298
    return v1

    .line 301
    :cond_4
    move-object v6, v5

    check-cast v6, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-interface {v6}, Lcom/sun/source/tree/MethodInvocationTree;->getMethodSelect()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 302
    .local v6, "rcvtoarray":Lcom/sun/source/tree/ExpressionTree;
    instance-of v7, v6, Lcom/sun/source/tree/MemberSelectTree;

    if-nez v7, :cond_5

    .line 303
    return v1

    .line 305
    :cond_5
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v7}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v6

    .line 306
    instance-of v7, v6, Lcom/sun/source/tree/IdentifierTree;

    if-nez v7, :cond_6

    .line 307
    return v1

    .line 310
    :cond_6
    move-object v7, v4

    check-cast v7, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v7}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v7

    move-object v8, v6

    check-cast v8, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v8}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v8

    if-ne v7, v8, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method private static final isPrimitive(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 1
    .param p0, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 511
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method private final isString(Lcom/sun/source/tree/ExpressionTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/ExpressionTree;

    .line 505
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 506
    .local v0, "type":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->types:Ljavax/lang/model/util/Types;

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->stringType:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v2, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    return v1
.end method

.method private final isUnboxingOperation(Lcom/sun/source/tree/BinaryTree;)Z
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;

    .line 490
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isString(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 493
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isPrimitive(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isPrimitive(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method protected checkExceptionParameter(Lcom/sun/source/tree/CatchTree;)V
    .locals 0
    .param p1, "node"    # Lcom/sun/source/tree/CatchTree;

    .line 581
    return-void
.end method

.method protected checkForRedundantTests(Lcom/sun/source/tree/BinaryTree;)V
    .locals 7
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;

    .line 363
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 364
    .local v0, "leftOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 367
    .local v1, "rightOp":Lcom/sun/source/tree/ExpressionTree;
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v3, "redundantNullComparison"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    return-void

    .line 374
    :cond_0
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v2

    sget-object v3, Lcom/sun/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lcom/sun/source/tree/Tree$Kind;

    if-ne v2, v3, :cond_3

    .line 375
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v2, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 376
    .local v2, "left":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v3, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 377
    .local v3, "right":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-interface {v0}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    const-string v6, "known.nonnull"

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 378
    invoke-virtual {v3, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->NULL_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    .line 381
    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 382
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 385
    .end local v2    # "left":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "right":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_3
    :goto_0
    return-void
.end method

.method protected checkMethodInvocability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/MethodInvocationTree;)V
    .locals 5
    .param p1, "method"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;
    .param p2, "node"    # Lcom/sun/source/tree/MethodInvocationTree;

    .line 467
    invoke-static {p2}, Lorg/checkerframework/javacutil/TreeUtils;->isSelfAccess(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    .line 474
    .local v0, "recvAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;->getReceiverType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getErased()Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v1

    .line 475
    .local v1, "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->shallowCopy(Z)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v2

    .line 476
    .local v2, "treeReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v3, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getReceiverType(Lcom/sun/source/tree/ExpressionTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    .line 477
    .local v3, "rcv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getEffectiveAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->addAnnotations(Ljava/lang/Iterable;)V

    .line 481
    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v2, v4}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    :cond_0
    return-void

    .line 485
    .end local v0    # "recvAnnos":Ljava/util/Set;, "Ljava/util/Set<Ljavax/lang/model/element/AnnotationMirror;>;"
    .end local v1    # "methodReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v2    # "treeReceiver":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .end local v3    # "rcv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->checkMethodInvocability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedExecutableType;Lcom/sun/source/tree/MethodInvocationTree;)V

    .line 486
    return-void
.end method

.method protected checkThrownExpression(Lcom/sun/source/tree/ThrowTree;)V
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ThrowTree;

    .line 316
    invoke-interface {p1}, Lcom/sun/source/tree/ThrowTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "throwing.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 317
    return-void
.end method

.method protected commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 4
    .param p1, "varTree"    # Lcom/sun/source/tree/Tree;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 162
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/VariableTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/VariableTree;)Ljavax/lang/model/element/VariableElement;

    move-result-object v0

    .line 164
    .local v0, "elem":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v1, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->fromElement(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->MONOTONIC_NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 165
    const-string v2, "noInitForMonotonicNonNull"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    return-void

    .line 171
    .end local v0    # "elem":Ljavax/lang/model/element/Element;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->commonAssignmentCheck(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V
    .locals 1
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueExp"    # Lcom/sun/source/tree/ExpressionTree;
    .param p3, "errorKey"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->replacePolyQualifier(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)V

    .line 184
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 1
    .param p1, "varType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p3, "valueTree"    # Lcom/sun/source/tree/Tree;
    .param p4, "errorKey"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "unboxing.of.nullable"

    invoke-direct {p0, p2, p3, v0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)Z

    move-result v0

    .line 196
    .local v0, "succeed":Z
    if-nez v0, :cond_0

    .line 198
    return-void

    .line 201
    .end local v0    # "succeed":Z
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->commonAssignmentCheck(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public createTypeFactory()Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;
    .locals 2

    .line 102
    new-instance v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method public bridge synthetic createTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->createTypeFactory()Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z
    .locals 8
    .param p1, "declarationType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "useType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "foundInit":Z
    const/4 v1, 0x0

    .line 111
    .local v1, "foundNonNull":Z
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v2, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getInitializationAnnotations()Ljava/util/Set;

    move-result-object v2

    .line 112
    .local v2, "initQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v3}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getNullnessAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 114
    .local v3, "nonNullQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;>;"
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/AnnotationMirror;

    .line 115
    .local v5, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v2, v5}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->containsSameByName(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    if-eqz v0, :cond_0

    .line 117
    return v6

    .line 119
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-direct {p0, v3, v5}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->containsSameByName(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    if-eqz v1, :cond_2

    .line 122
    return v6

    .line 124
    :cond_2
    const/4 v1, 0x1

    .line 126
    .end local v5    # "anno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    :goto_1
    goto :goto_0

    .line 128
    :cond_4
    invoke-interface {p3}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    sget-object v5, Lcom/sun/source/tree/Tree$Kind;->VARIABLE:Lcom/sun/source/tree/Tree$Kind;

    if-ne v4, v5, :cond_5

    .line 129
    invoke-static {p3}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v4

    .line 130
    .local v4, "vs":Ljavax/lang/model/element/Element;
    sget-object v5, Lorg/checkerframework/checker/nullness/NullnessVisitor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    invoke-interface {v4}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 132
    :pswitch_0
    iget-object v5, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NULLABLE:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p2, v5}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->hasAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 135
    return v6

    .line 144
    .end local v4    # "vs":Ljavax/lang/model/element/Element;
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->isValidUse(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Z

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Lcom/sun/source/tree/AnnotationTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "node"    # Lcom/sun/source/tree/AnnotationTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ArrayAccessTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 227
    invoke-interface {p1}, Lcom/sun/source/tree/ArrayAccessTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "accessing.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 228
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitArrayAccess(Lcom/sun/source/tree/ArrayAccessTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/AssertTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 335
    const/4 v0, 0x1

    .line 337
    .local v0, "doVisitAssert":Z
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "assumeAssertionsAreEnabled"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 338
    invoke-static {v1, p1}, Lorg/checkerframework/framework/flow/CFCFGBuilder;->assumeAssertionsActivatedForAssertTree(Lorg/checkerframework/framework/source/SourceChecker;Lcom/sun/source/tree/AssertTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v2, "assumeAssertionsAreDisabled"

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    const/4 v0, 0x0

    goto :goto_1

    .line 339
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 344
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 345
    invoke-interface {p1}, Lcom/sun/source/tree/AssertTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "condition.nullable"

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 346
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitAssert(Lcom/sun/source/tree/AssertTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1

    .line 349
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 390
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getLeftOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    .line 391
    .local v0, "leftOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-interface {p1}, Lcom/sun/source/tree/BinaryTree;->getRightOperand()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 393
    .local v1, "rightOp":Lcom/sun/source/tree/ExpressionTree;
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isUnboxingOperation(Lcom/sun/source/tree/BinaryTree;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "unboxing.of.nullable"

    invoke-direct {p0, v0, v2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 395
    invoke-direct {p0, v1, v2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForRedundantTests(Lcom/sun/source/tree/BinaryTree;)V

    .line 400
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitBinary(Lcom/sun/source/tree/BinaryTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    return-object v2
.end method

.method public bridge synthetic visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/CompoundAssignmentTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 414
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isString(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getVariable()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "unboxing.of.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 416
    invoke-interface {p1}, Lcom/sun/source/tree/CompoundAssignmentTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 418
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitCompoundAssignment(Lcom/sun/source/tree/CompoundAssignmentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 572
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "condition.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 573
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitConditionalExpression(Lcom/sun/source/tree/ConditionalExpressionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/DoWhileLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 566
    invoke-interface {p1}, Lcom/sun/source/tree/DoWhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "condition.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 567
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitDoWhileLoop(Lcom/sun/source/tree/DoWhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/EnhancedForLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 220
    invoke-interface {p1}, Lcom/sun/source/tree/EnhancedForLoopTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "iterating.over.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 221
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitEnhancedForLoop(Lcom/sun/source/tree/EnhancedForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/ForLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 522
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {p1}, Lcom/sun/source/tree/ForLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "condition.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 526
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitForLoop(Lcom/sun/source/tree/ForLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/IfTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 354
    invoke-interface {p1}, Lcom/sun/source/tree/IfTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "condition.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 355
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitIf(Lcom/sun/source/tree/IfTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "node"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 207
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromTree(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 208
    .local v0, "e":Ljavax/lang/model/element/Element;
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isSelfAccess(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/source/tree/ExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_0

    .line 211
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isStatic(Ljavax/lang/model/element/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    const-string v2, "dereference.of.nullable"

    invoke-direct {p0, v1, v2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 214
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public bridge synthetic visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "node"    # Lcom/sun/source/tree/NewArrayTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 233
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/NewArrayTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    move-result-object v0

    .line 234
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    .line 235
    .local v1, "componentType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v1, v2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasEffectiveAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    invoke-static {p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isNewArrayAllZeroDims(Lcom/sun/source/tree/NewArrayTree;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isNewArrayInToArray(Lcom/sun/source/tree/NewArrayTree;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isPrimitive(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 239
    const-string v3, "soundArrayCreationNullness"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 241
    const-string v3, "forbidnonnullarraycomponents"

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getLintOption(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 245
    invoke-virtual {v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    .line 246
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 243
    const-string v4, "new.array.type.invalid"

    invoke-static {v4, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 250
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitNewArray(Lcom/sun/source/tree/NewArrayTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "node"    # Lcom/sun/source/tree/NewClassTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 531
    iget-object v0, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v0, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v0, p1}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/NewClassTree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;

    move-result-object v0

    .line 532
    .local v0, "type":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    invoke-interface {p1}, Lcom/sun/source/tree/NewClassTree;->getIdentifier()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v1

    .line 533
    .local v1, "identifier":Lcom/sun/source/tree/ExpressionTree;
    instance-of v2, v1, Lcom/sun/source/tree/AnnotatedTypeTree;

    if-eqz v2, :cond_2

    .line 534
    move-object v2, v1

    check-cast v2, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 535
    .local v2, "t":Lcom/sun/source/tree/AnnotatedTypeTree;
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v3, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "new.class.type.invalid"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/AnnotationMirror;

    .line 537
    .local v4, "a":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v6, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->atypeFactory:Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    check-cast v6, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;

    .line 538
    invoke-virtual {v6}, Lorg/checkerframework/checker/nullness/NullnessAnnotatedTypeFactory;->getNullnessAnnotations()Ljava/util/Set;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->containsSameByName(Ljava/util/Set;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v6

    .line 539
    .local v6, "nullnessCheckerAnno":Z
    if-eqz v6, :cond_0

    iget-object v7, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->NONNULL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v7, v4}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 541
    iget-object v7, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 542
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v5

    .line 541
    invoke-virtual {v7, v5, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 545
    .end local v4    # "a":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "nullnessCheckerAnno":Z
    :cond_0
    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@PolyNull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 549
    iget-object v3, p0, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 550
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getAnnotations()Ljava/util/Set;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v4

    .line 549
    invoke-virtual {v3, v4, p1}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    .line 555
    .end local v2    # "t":Lcom/sun/source/tree/AnnotatedTypeTree;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitNewClass(Lcom/sun/source/tree/NewClassTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/SwitchTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 516
    invoke-interface {p1}, Lcom/sun/source/tree/SwitchTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "switching.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 517
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitSwitch(Lcom/sun/source/tree/SwitchTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/SynchronizedTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 322
    invoke-interface {p1}, Lcom/sun/source/tree/SynchronizedTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "locking.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 323
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitSynchronized(Lcom/sun/source/tree/SynchronizedTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/TypeCastTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 424
    invoke-static {p1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isPrimitive(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->isPrimitive(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-interface {p1}, Lcom/sun/source/tree/TypeCastTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "unboxing.of.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitTypeCast(Lcom/sun/source/tree/TypeCastTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 406
    invoke-interface {p1}, Lcom/sun/source/tree/UnaryTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "unboxing.of.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 407
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitUnary(Lcom/sun/source/tree/UnaryTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "node"    # Lcom/sun/source/tree/WhileLoopTree;
    .param p2, "p"    # Ljava/lang/Void;

    .line 560
    invoke-interface {p1}, Lcom/sun/source/tree/WhileLoopTree;->getCondition()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    const-string v1, "condition.nullable"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/checker/nullness/NullnessVisitor;->checkForNullability(Lcom/sun/source/tree/ExpressionTree;Ljava/lang/String;)Z

    .line 561
    invoke-super {p0, p1, p2}, Lorg/checkerframework/checker/initialization/InitializationVisitor;->visitWhileLoop(Lcom/sun/source/tree/WhileLoopTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
