.class public Lorg/checkerframework/dataflow/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isArrayLengthFieldAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 4
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 49
    instance-of v0, p0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 52
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    .line 53
    .local v0, "fieldAccess":Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 53
    :goto_0
    return v1
.end method

.method public static isBooleanTypeNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 5
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 25
    instance-of v0, p0, Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 26
    return v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    .line 32
    .local v0, "tree":Lcom/sun/source/tree/Tree;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 33
    return v2

    .line 36
    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree;

    iget-object v3, v3, Lcom/sun/tools/javac/tree/JCTree;->type:Lcom/sun/tools/javac/code/Type;

    .line 37
    .local v3, "type":Lcom/sun/tools/javac/code/Type;
    invoke-static {v3}, Lorg/checkerframework/javacutil/TypesUtils;->isBooleanType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 38
    return v1

    .line 41
    :cond_2
    return v2
.end method

.method public static isMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;

    .line 60
    instance-of v0, p0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 64
    .local v0, "invoked":Ljavax/lang/model/element/ExecutableElement;
    invoke-static {v0, p1, p2}, Lorg/checkerframework/javacutil/ElementUtils;->isMethod(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/annotation/processing/ProcessingEnvironment;)Z

    move-result v1

    return v1
.end method
