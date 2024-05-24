.class public abstract Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.super Ljava/lang/Object;
.source "AssignmentContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;,
        Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;,
        Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;,
        Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$AssignmentLhsContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContextTree()Lcom/sun/source/tree/Tree;
.end method

.method public abstract getElementForType()Ljavax/lang/model/element/Element;
.end method
