.class public final synthetic Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ParseResult;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ParseResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ParseResult;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/Problem;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->lambda$null$4(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/Problem;)V

    return-void
.end method
