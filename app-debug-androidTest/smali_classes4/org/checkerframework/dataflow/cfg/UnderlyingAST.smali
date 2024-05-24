.class public abstract Lorg/checkerframework/dataflow/cfg/UnderlyingAST;
.super Ljava/lang/Object;
.source "UnderlyingAST.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGStatement;,
        Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGLambda;,
        Lorg/checkerframework/dataflow/cfg/UnderlyingAST$CFGMethod;,
        Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
    }
.end annotation


# instance fields
.field protected final kind:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;)V
    .locals 0
    .param p1, "kind"    # Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->kind:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract getCode()Lcom/sun/source/tree/Tree;
.end method

.method public getKind()Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/UnderlyingAST;->kind:Lorg/checkerframework/dataflow/cfg/UnderlyingAST$Kind;

    return-object v0
.end method
