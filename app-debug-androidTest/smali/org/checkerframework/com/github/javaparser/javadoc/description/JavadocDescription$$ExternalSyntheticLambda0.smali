.class public final synthetic Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->lambda$toText$0(Ljava/lang/StringBuilder;Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)V

    return-void
.end method