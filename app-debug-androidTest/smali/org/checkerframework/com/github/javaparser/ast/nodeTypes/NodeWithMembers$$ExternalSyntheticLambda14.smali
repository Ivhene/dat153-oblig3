.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithMembers;->lambda$getFields$17(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)Z

    move-result p1

    return p1
.end method
