.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
.super Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NodeWithExceptionsHolder"
.end annotation


# instance fields
.field protected exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;>;"
        }
    .end annotation
.end field

.field protected node:Lorg/checkerframework/dataflow/cfg/node/Node;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/node/Node;Ljava/util/Map;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;>;)V"
        }
    .end annotation

    .line 391
    .local p2, "exceptions":Ljava/util/Map;, "Ljava/util/Map<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->EXCEPTION_NODE:Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;-><init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;)V

    .line 392
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 393
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->exceptions:Ljava/util/Map;

    .line 394
    return-void
.end method


# virtual methods
.method public getExceptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->exceptions:Ljava/util/Map;

    return-object v0
.end method

.method public getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeWithExceptionsHolder("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
