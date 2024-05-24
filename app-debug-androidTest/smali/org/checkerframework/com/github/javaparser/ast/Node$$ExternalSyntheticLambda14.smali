.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda14;->f$0:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda14;->f$0:Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->lambda$registerForSubtree$4(Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
