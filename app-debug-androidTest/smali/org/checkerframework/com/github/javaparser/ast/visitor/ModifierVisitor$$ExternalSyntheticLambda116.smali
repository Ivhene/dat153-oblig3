.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;->f$0:Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;->f$1:Ljava/lang/Object;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->lambda$visit$69$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    move-result-object p1

    return-object p1
.end method
