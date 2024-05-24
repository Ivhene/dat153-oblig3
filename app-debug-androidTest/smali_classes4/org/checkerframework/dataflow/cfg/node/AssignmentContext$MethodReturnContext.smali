.class public Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;
.super Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.source "AssignmentContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodReturnContext"
.end annotation


# instance fields
.field protected final method:Ljavax/lang/model/element/ExecutableElement;

.field protected final ret:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/MethodTree;)V
    .locals 1
    .param p1, "method"    # Lcom/sun/source/tree/MethodTree;

    .line 83
    invoke-direct {p0}, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext;-><init>()V

    .line 84
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromDeclaration(Lcom/sun/source/tree/MethodTree;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;->method:Ljavax/lang/model/element/ExecutableElement;

    .line 85
    invoke-interface {p1}, Lcom/sun/source/tree/MethodTree;->getReturnType()Lcom/sun/source/tree/Tree;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;->ret:Lcom/sun/source/tree/Tree;

    .line 86
    return-void
.end method


# virtual methods
.method public getContextTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;->ret:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public getElementForType()Ljavax/lang/model/element/Element;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/AssignmentContext$MethodReturnContext;->method:Ljavax/lang/model/element/ExecutableElement;

    return-object v0
.end method
