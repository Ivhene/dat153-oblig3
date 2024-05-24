.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;->lambda$removeModifier$1(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Modifier;)Z

    move-result p1

    return p1
.end method
