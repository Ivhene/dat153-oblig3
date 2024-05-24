.class public interface abstract Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
.super Ljava/lang/Object;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ParseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostProcessor"
.end annotation


# virtual methods
.method public abstract process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ParserConfiguration;",
            ")V"
        }
    .end annotation
.end method
