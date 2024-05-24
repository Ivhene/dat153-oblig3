.class public Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;
.super Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.source "UnderlyingAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFGMethod"
.end annotation


# instance fields
.field protected final classTree:Lcom/sun/source/tree/ClassTree;

.field protected final method:Lcom/sun/source/tree/MethodTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/MethodTree;Lcom/sun/source/tree/ClassTree;)V
    .locals 1
    .param p1, "method"    # Lcom/sun/source/tree/MethodTree;
    .param p2, "classTree"    # Lcom/sun/source/tree/ClassTree;

    .line 46
    sget-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->METHOD:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;-><init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;)V

    .line 47
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->method:Lcom/sun/source/tree/MethodTree;

    .line 48
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->classTree:Lcom/sun/source/tree/ClassTree;

    .line 49
    return-void
.end method


# virtual methods
.method public getClassTree()Lcom/sun/source/tree/ClassTree;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->classTree:Lcom/sun/source/tree/ClassTree;

    return-object v0
.end method

.method public getCode()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->method:Lcom/sun/source/tree/MethodTree;

    invoke-interface {v0}, Lcom/sun/source/tree/MethodTree;->getBody()Lcom/sun/source/tree/BlockTree;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/sun/source/tree/MethodTree;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->method:Lcom/sun/source/tree/MethodTree;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFGMethod(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;->method:Lcom/sun/source/tree/MethodTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
