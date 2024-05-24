.class public final synthetic Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/CommentsInserter;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/CommentsInserter;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/CommentsInserter;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/CommentsInserter;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/CommentsInserter$$ExternalSyntheticLambda7;->f$2:Ljava/util/List;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/CommentsInserter;->lambda$null$5$org-checkerframework-com-github-javaparser-CommentsInserter(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
