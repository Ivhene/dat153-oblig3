.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    iput p2, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->lambda$calculateMaximumCommonType$1(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
