.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorMap;->put(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
