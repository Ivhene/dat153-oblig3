.class public Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;
.super Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.source "UnderlyingAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFGStatement"
.end annotation


# instance fields
.field protected final classTree:Lcom/sun/source/tree/ClassTree;

.field protected final code:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/ClassTree;)V
    .locals 1
    .param p1, "code"    # Lcom/sun/source/tree/Tree;
    .param p2, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 104
    sget-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->ARBITRARY_CODE:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;-><init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;)V

    .line 105
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->code:Lcom/sun/source/tree/Tree;

    .line 106
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->classTree:Lcom/sun/source/tree/ClassTree;

    .line 107
    return-void
.end method


# virtual methods
.method public getClassTree()Lcom/sun/source/tree/ClassTree;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->classTree:Lcom/sun/source/tree/ClassTree;

    return-object v0
.end method

.method public getCode()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->code:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFGStatement(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;->code:Lcom/sun/source/tree/Tree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
