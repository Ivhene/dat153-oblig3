.class public Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;
.super Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.source "AssignmentContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LambdaReturnContext"
.end annotation


# instance fields
.field protected final method:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 104
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 106
    return-void
.end method


# virtual methods
.method public getContextTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementForType()Ljavax/lang/model/element/Element;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$LambdaReturnContext;->method:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method
