.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/NodeList$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    return-void
.end method
