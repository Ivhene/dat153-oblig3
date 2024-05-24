.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$1:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$1:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->lambda$notifyPropertyChange$3$org-checkerframework-com-github-javaparser-ast-Node(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method
