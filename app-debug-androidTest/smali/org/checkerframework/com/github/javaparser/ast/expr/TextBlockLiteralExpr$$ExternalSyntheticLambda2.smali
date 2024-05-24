.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$2$org-checkerframework-com-github-javaparser-ast-expr-TextBlockLiteralExpr(Lorg/checkerframework/com/github/javaparser/utils/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
