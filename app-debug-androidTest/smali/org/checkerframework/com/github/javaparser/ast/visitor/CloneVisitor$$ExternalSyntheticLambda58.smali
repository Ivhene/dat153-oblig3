.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda58;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor$$ExternalSyntheticLambda58;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->addOrphanComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V

    return-void
.end method