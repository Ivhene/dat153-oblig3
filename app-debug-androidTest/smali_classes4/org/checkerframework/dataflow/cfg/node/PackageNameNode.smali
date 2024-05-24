.class public Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "PackageNameNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final element:Ljavax/lang/model/element/Element;

.field protected final parent:Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/IdentifierTree;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/IdentifierTree;

    .line 30
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 31
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->tree:Lcom/sun/source/tree/Tree;

    .line 32
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->element:Ljavax/lang/model/element/Element;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->parent:Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "parent"    # Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    .line 38
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 39
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->tree:Lcom/sun/source/tree/Tree;

    .line 40
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isUseOfElement(Lcom/sun/source/tree/ExpressionTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->element:Ljavax/lang/model/element/Element;

    .line 42
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->parent:Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): tree kind"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 61
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitPackageName(Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    .line 75
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getParent()Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getParent()Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 75
    :goto_0
    return v1
.end method

.method public getElement()Ljavax/lang/model/element/Element;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->element:Ljavax/lang/model/element/Element;

    return-object v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->parent:Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->parent:Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 81
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getParent()Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/PackageNameNode;->getElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
