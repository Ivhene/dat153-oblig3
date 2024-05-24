.class public Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;
.super Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.source "UnderlyingAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFGLambda"
.end annotation


# instance fields
.field private final lambda:Lcom/sun/source/tree/LambdaExpressionTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/LambdaExpressionTree;)V
    .locals 1
    .param p1, "lambda"    # Lcom/sun/source/tree/LambdaExpressionTree;

    .line 76
    sget-object v0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;->LAMBDA:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;-><init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;)V

    .line 77
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->lambda:Lcom/sun/source/tree/LambdaExpressionTree;

    .line 78
    return-void
.end method


# virtual methods
.method public getCode()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->lambda:Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-interface {v0}, Lcom/sun/source/tree/LambdaExpressionTree;->getBody()Lcom/sun/source/tree/Tree;

    move-result-object v0

    return-object v0
.end method

.method public getLambdaTree()Lcom/sun/source/tree/LambdaExpressionTree;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->lambda:Lcom/sun/source/tree/LambdaExpressionTree;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CFGLambda(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;->lambda:Lcom/sun/source/tree/LambdaExpressionTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
