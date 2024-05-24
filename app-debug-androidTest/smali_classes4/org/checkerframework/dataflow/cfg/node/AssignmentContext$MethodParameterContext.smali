.class public Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;
.super Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.source "AssignmentContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodParameterContext"
.end annotation


# instance fields
.field protected final method:Ljavax/lang/model/element/ExecutableElement;

.field protected final paramNum:I


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/ExecutableElement;I)V
    .locals 0
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p2, "paramNum"    # I

    .line 59
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 61
    iput p2, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;->paramNum:I

    .line 62
    return-void
.end method


# virtual methods
.method public getContextTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementForType()Ljavax/lang/model/element/Element;
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;->method:Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodParameterContext;->paramNum:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    return-object v0
.end method
