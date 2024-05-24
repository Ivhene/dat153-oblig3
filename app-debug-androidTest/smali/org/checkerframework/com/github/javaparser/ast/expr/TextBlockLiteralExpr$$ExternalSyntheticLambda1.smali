.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/String;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$1$org-checkerframework-com-github-javaparser-ast-expr-TextBlockLiteralExpr([Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/utils/Pair;)Z

    move-result p1

    return p1
.end method
