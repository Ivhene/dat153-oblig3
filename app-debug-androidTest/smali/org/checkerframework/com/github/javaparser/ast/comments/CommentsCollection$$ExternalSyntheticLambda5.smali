.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;->lambda$getLineComments$1(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;

    move-result-object p1

    return-object p1
.end method
