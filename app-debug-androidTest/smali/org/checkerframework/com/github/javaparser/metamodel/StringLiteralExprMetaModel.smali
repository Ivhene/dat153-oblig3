.class public Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;
.super Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
.source "StringLiteralExprMetaModel.java"


# direct methods
.method constructor <init>(Ljava/util/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superBaseNodeMetaModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;",
            ">;)V"
        }
    .end annotation

    .line 8
    .local p1, "superBaseNodeMetaModel":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;>;"
    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    const-string v3, "StringLiteralExpr"

    const-string v4, "org.checkerframework.com.github.javaparser.ast.expr"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 9
    return-void
.end method