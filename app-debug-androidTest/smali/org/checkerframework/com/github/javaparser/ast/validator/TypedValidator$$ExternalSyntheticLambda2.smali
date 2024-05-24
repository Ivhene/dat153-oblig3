.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    return-void
.end method


# virtual methods
.method public final process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator$$ExternalSyntheticLambda2;->f$0:Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;->lambda$postProcessor$2(Lorg/checkerframework/com/github/javaparser/ast/validator/TypedValidator;Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    return-void
.end method
