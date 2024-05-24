.class public final synthetic Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/JavaParser;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/JavaParser;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/JavaParser;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;->f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/JavaParser;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda8;->f$1:Lorg/checkerframework/com/github/javaparser/ParseResult;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->lambda$parse$0$org-checkerframework-com-github-javaparser-JavaParser(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    return-void
.end method
