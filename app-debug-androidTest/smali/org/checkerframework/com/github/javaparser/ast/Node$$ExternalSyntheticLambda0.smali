.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->lambda$treeIterable$7$org-checkerframework-com-github-javaparser-ast-Node(Lorg/checkerframework/com/github/javaparser/ast/Node$TreeTraversal;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
