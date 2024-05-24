.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;->f$0:Ljava/util/function/Predicate;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;->f$0:Ljava/util/function/Predicate;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->lambda$findAll$9(Ljava/util/function/Predicate;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
