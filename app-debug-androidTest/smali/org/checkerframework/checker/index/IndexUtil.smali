.class public Lorg/checkerframework/checker/index/IndexUtil;
.super Ljava/lang/Object;
.source "IndexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLengthSequenceTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/checker/index/IndexMethodIdentifier;Ljavax/annotation/processing/ProcessingEnvironment;)Lcom/sun/source/tree/ExpressionTree;
    .locals 1
    .param p0, "lengthTree"    # Lcom/sun/source/tree/Tree;
    .param p1, "imf"    # Lorg/checkerframework/checker/index/IndexMethodIdentifier;
    .param p2, "processingEnv"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 23
    invoke-static {p0}, Lorg/checkerframework/javacutil/TreeUtils;->isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p1, p0}, Lorg/checkerframework/checker/index/IndexMethodIdentifier;->isLengthOfMethodInvocation(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/sun/source/tree/MethodInvocationTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->getReceiverTree(Lcom/sun/source/tree/ExpressionTree;)Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSequenceType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 17
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lorg/checkerframework/javacutil/TypesUtils;->isString(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

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
