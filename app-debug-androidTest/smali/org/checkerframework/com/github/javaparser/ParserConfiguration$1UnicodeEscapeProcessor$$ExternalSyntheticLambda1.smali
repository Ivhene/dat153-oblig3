.class public final synthetic Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration$1UnicodeEscapeProcessor;->lambda$process$2$org-checkerframework-com-github-javaparser-ParserConfiguration$1UnicodeEscapeProcessor(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method
