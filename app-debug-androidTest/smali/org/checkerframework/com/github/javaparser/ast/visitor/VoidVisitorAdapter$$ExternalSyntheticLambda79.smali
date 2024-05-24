.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter$$ExternalSyntheticLambda79;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter$$ExternalSyntheticLambda79;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter$$ExternalSyntheticLambda79;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter$$ExternalSyntheticLambda79;->f$1:Ljava/lang/Object;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitorAdapter;->lambda$visit$92$org-checkerframework-com-github-javaparser-ast-visitor-VoidVisitorAdapter(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
