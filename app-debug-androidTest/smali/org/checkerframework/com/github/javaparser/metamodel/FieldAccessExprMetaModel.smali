.class public Lorg/checkerframework/com/github/javaparser/metamodel/FieldAccessExprMetaModel;
.super Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
.source "FieldAccessExprMetaModel.java"


# instance fields
.field public namePropertyMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

.field public scopePropertyMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

.field public typeArgumentsPropertyMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

.field public usingDiamondOperatorPropertyMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;


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
    const-class v2, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    const-string v3, "FieldAccessExpr"

    const-string v4, "org.checkerframework.com.github.javaparser.ast.expr"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;-><init>(Ljava/util/Optional;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 9
    return-void
.end method