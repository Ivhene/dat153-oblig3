.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Class;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/Node$$ExternalSyntheticLambda7;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->lambda$walk$8(Ljava/lang/Class;Ljava/util/function/Consumer;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
