.class public Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;
.super Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;
.source "ExplicitThisLiteralNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;)V
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;

    .line 19
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/ThisLiteralNode;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 20
    instance-of v0, p1, Lcom/sun/source/tree/IdentifierTree;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/source/tree/IdentifierTree;

    invoke-interface {v0}, Lcom/sun/source/tree/IdentifierTree;->getName()Ljavax/lang/model/element/Name;

    move-result-object v0

    const-string v1, "this"

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;->tree:Lcom/sun/source/tree/Tree;

    .line 22
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

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

    .line 31
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitExplicitThisLiteral(Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ExplicitThisLiteralNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
