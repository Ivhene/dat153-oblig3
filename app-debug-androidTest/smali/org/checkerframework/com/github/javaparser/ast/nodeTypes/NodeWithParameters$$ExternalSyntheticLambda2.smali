.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Class;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;->lambda$getParameterByType$2(Ljava/lang/Class;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Z

    move-result p1

    return p1
.end method
