.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->lambda$null$1(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
