.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1

    iget v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatchers;->lambda$byTokenType$0(ILorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    return p1
.end method
