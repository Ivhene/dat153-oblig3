.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr$$ExternalSyntheticLambda4;->f$0:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->lambda$stripIndentOfLines$3(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
