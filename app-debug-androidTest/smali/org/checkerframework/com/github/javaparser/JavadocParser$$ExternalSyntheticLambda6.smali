.class public final synthetic Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda6;->f$0:Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavadocParser$$ExternalSyntheticLambda6;->f$0:Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->lambda$parse$2(Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;Ljava/lang/String;)V

    return-void
.end method