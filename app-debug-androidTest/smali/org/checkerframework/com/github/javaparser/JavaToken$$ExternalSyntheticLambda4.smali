.class public final synthetic Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda4;->f$0:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaToken$$ExternalSyntheticLambda4;->f$0:Ljava/util/Optional;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaToken;->lambda$deleteToken$3(Ljava/util/Optional;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    return-void
.end method
